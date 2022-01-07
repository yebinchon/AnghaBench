
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef void* time_t ;
struct passwd {int pw_fields; void* pw_expire; int pw_shell; int pw_dir; int pw_gecos; int pw_class; int pw_passwd; void* pw_change; scalar_t__ pw_gid; scalar_t__ pw_uid; int pw_name; } ;
typedef int nvlist_t ;
typedef scalar_t__ gid_t ;


 int EINVAL ;
 int explicit_bzero (struct passwd*,int) ;
 int nvlist_exists_string (int const*,char*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 int passwd_unpack_string (int const*,char*,int *,char**,size_t*) ;

__attribute__((used)) static int
passwd_unpack(const nvlist_t *nvl, struct passwd *pwd, char *buffer,
    size_t bufsize)
{
 int error;

 if (!nvlist_exists_string(nvl, "pw_name"))
  return (EINVAL);

 explicit_bzero(pwd, sizeof(*pwd));

 error = passwd_unpack_string(nvl, "pw_name", &pwd->pw_name, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 pwd->pw_uid = (uid_t)nvlist_get_number(nvl, "pw_uid");
 pwd->pw_gid = (gid_t)nvlist_get_number(nvl, "pw_gid");
 pwd->pw_change = (time_t)nvlist_get_number(nvl, "pw_change");
 error = passwd_unpack_string(nvl, "pw_passwd", &pwd->pw_passwd, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 error = passwd_unpack_string(nvl, "pw_class", &pwd->pw_class, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 error = passwd_unpack_string(nvl, "pw_gecos", &pwd->pw_gecos, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 error = passwd_unpack_string(nvl, "pw_dir", &pwd->pw_dir, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 error = passwd_unpack_string(nvl, "pw_shell", &pwd->pw_shell, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 pwd->pw_expire = (time_t)nvlist_get_number(nvl, "pw_expire");
 pwd->pw_fields = (int)nvlist_get_number(nvl, "pw_fields");

 return (0);
}

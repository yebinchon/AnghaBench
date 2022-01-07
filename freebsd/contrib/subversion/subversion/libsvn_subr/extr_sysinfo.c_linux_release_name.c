
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,char const*,char const*) ;
 char* debian_release (int *) ;
 char* lsb_release (int *) ;
 char* redhat_release (int *) ;
 char* release_name_from_uname (int *) ;
 char* suse_release (int *) ;
 char* systemd_release (int *) ;

__attribute__((used)) static const char *
linux_release_name(apr_pool_t *pool)
{
  const char *uname_release = release_name_from_uname(pool);



  const char *release_name = lsb_release(pool);


  if (!release_name)
    release_name = systemd_release(pool);


  if (!release_name)
    release_name = redhat_release(pool);


  if (!release_name)
    release_name = suse_release(pool);


  if (!release_name)
    release_name = debian_release(pool);

  if (!release_name)
    return uname_release;

  if (!uname_release)
    return release_name;

  return apr_psprintf(pool, "%s [%s]", release_name, uname_release);
}

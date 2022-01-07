
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct sshbuf {int dummy; } ;
struct passwd {int pw_fields; int pw_expire; int pw_shell; int pw_dir; int pw_class; int pw_gecos; int pw_change; int pw_gid; int pw_uid; int pw_passwd; int pw_name; } ;


 int sshbuf_free_passwd (struct passwd*) ;
 scalar_t__ sshbuf_get_cstring (struct sshbuf*,int *,int *) ;
 scalar_t__ sshbuf_get_time (struct sshbuf*,int *) ;
 scalar_t__ sshbuf_get_u32 (struct sshbuf*,int *) ;
 int sshbuf_get_u64 (struct sshbuf*,int*) ;
 struct passwd* xcalloc (int,int) ;

struct passwd *
sshbuf_get_passwd(struct sshbuf *buf)
{
 struct passwd *pw;
 u_int64_t len;
 int r;


 r = sshbuf_get_u64(buf, &len);
 if (r != 0 || len != sizeof(*pw))
  return ((void*)0);

 pw = xcalloc(1, sizeof(*pw));
 if (sshbuf_get_cstring(buf, &pw->pw_name, ((void*)0)) != 0 ||
     sshbuf_get_cstring(buf, &pw->pw_passwd, ((void*)0)) != 0 ||
     sshbuf_get_u32(buf, &pw->pw_uid) != 0 ||
     sshbuf_get_u32(buf, &pw->pw_gid) != 0 ||
     sshbuf_get_cstring(buf, &pw->pw_dir, ((void*)0)) != 0 ||
     sshbuf_get_cstring(buf, &pw->pw_shell, ((void*)0)) != 0 ||



     sshbuf_get_u32(buf, &pw->pw_fields) != 0) {
  sshbuf_free_passwd(pw);
  return ((void*)0);
 }
 return pw;
}

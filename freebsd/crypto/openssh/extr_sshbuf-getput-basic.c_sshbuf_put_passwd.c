
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
struct passwd {char* pw_name; char* pw_gecos; char* pw_class; char* pw_dir; char* pw_shell; int pw_fields; int pw_expire; int pw_change; int pw_gid; int pw_uid; } ;


 int sshbuf_put_cstring (struct sshbuf*,char*) ;
 int sshbuf_put_time (struct sshbuf*,int ) ;
 int sshbuf_put_u32 (struct sshbuf*,int ) ;
 scalar_t__ sshbuf_put_u64 (struct sshbuf*,int) ;

int
sshbuf_put_passwd(struct sshbuf *buf, const struct passwd *pwent)
{
 int r;






 if ((r = sshbuf_put_u64(buf, sizeof(*pwent)) != 0) ||
     (r = sshbuf_put_cstring(buf, pwent->pw_name)) != 0 ||
     (r = sshbuf_put_cstring(buf, "*")) != 0 ||
     (r = sshbuf_put_u32(buf, pwent->pw_uid)) != 0 ||
     (r = sshbuf_put_u32(buf, pwent->pw_gid)) != 0 ||
     (r = sshbuf_put_cstring(buf, pwent->pw_dir)) != 0 ||
     (r = sshbuf_put_cstring(buf, pwent->pw_shell)) != 0 ||



     (r = sshbuf_put_u32(buf, pwent->pw_fields)) != 0) {
  return r;
 }
 return 0;
}

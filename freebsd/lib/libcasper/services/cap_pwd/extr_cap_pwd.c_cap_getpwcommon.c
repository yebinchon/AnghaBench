
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;
typedef int cap_channel_t ;


 int cap_getpwcommon_r (int *,char const*,char const*,int ,int *,int ,int ,struct passwd**) ;
 int errno ;
 int gbuffer ;
 int gbufsize ;
 int gpwd ;

__attribute__((used)) static struct passwd *
cap_getpwcommon(cap_channel_t *chan, const char *cmd, const char *login,
    uid_t uid)
{
 struct passwd *result;
 int error, serrno;

 serrno = errno;

 error = cap_getpwcommon_r(chan, cmd, login, uid, &gpwd, gbuffer,
     gbufsize, &result);
 if (error != 0) {
  errno = error;
  return (((void*)0));
 }

 errno = serrno;

 return (result);
}

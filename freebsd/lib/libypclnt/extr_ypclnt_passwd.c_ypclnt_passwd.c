
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ypclnt_t ;
struct passwd {int dummy; } ;


 int ypclnt_havepasswdd (int *) ;
 int yppasswd_local (int *,struct passwd const*) ;
 int yppasswd_remote (int *,struct passwd const*,char const*) ;

int
ypclnt_passwd(ypclnt_t *ypclnt, const struct passwd *pwd, const char *passwd)
{
 switch (ypclnt_havepasswdd(ypclnt)) {
 case 0:
  return (yppasswd_remote(ypclnt, pwd, passwd));
 case 1:
  return (yppasswd_local(ypclnt, pwd));
 default:
  return (-1);
 }
}

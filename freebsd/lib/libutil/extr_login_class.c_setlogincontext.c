
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef scalar_t__ mode_t ;
typedef int login_cap_t ;


 unsigned long LOGIN_SETCPUMASK ;
 unsigned long LOGIN_SETENV ;
 unsigned long LOGIN_SETPATH ;
 unsigned long LOGIN_SETRESOURCES ;
 unsigned long LOGIN_SETUMASK ;
 scalar_t__ login_getcapnum (int *,char*,scalar_t__,scalar_t__) ;
 int setclasscpumask (int *) ;
 int setclassenvironment (int *,struct passwd const*,int) ;
 int setclassresources (int *) ;

__attribute__((used)) static mode_t
setlogincontext(login_cap_t *lc, const struct passwd *pwd,
  mode_t mymask, unsigned long flags)
{
    if (lc) {

 if (flags & LOGIN_SETRESOURCES)
     setclassresources(lc);

 if (flags & LOGIN_SETUMASK)
     mymask = (mode_t)login_getcapnum(lc, "umask", mymask, mymask);

 if (flags & LOGIN_SETPATH)
     setclassenvironment(lc, pwd, 1);

 if (flags & LOGIN_SETENV)
     setclassenvironment(lc, pwd, 0);

 if (flags & LOGIN_SETCPUMASK)
     setclasscpumask(lc);
    }
    return (mymask);
}

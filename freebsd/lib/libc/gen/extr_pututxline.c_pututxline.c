
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;
struct futx {int fu_type; } ;




 int EINVAL ;






 int errno ;
 struct utmpx* futx_to_utx (struct futx*) ;
 int utx_active_add (struct futx*) ;
 int utx_active_init (struct futx*) ;
 int utx_active_purge () ;
 int utx_active_remove (struct futx*) ;
 int utx_lastlogin_add (struct futx*) ;
 int utx_lastlogin_upgrade () ;
 int utx_log_add (struct futx*) ;
 int utx_to_futx (struct utmpx const*,struct futx*) ;

struct utmpx *
pututxline(const struct utmpx *utmpx)
{
 struct futx fu;
 int bad;

 bad = 0;

 utx_to_futx(utmpx, &fu);

 switch (fu.fu_type) {
 case 135:
  utx_active_init(&fu);
  utx_lastlogin_upgrade();
  break;
 case 129:
  utx_active_purge();
  break;
 case 130:
 case 131:
  break;
 case 128:
  bad |= utx_active_add(&fu);
  bad |= utx_lastlogin_add(&fu);
  break;






 case 134:





  if (utx_active_remove(&fu) != 0)
   return (((void*)0));
  break;
 default:
  errno = EINVAL;
  return (((void*)0));
 }

 bad |= utx_log_add(&fu);
 return (bad ? ((void*)0) : futx_to_utx(&fu));
}

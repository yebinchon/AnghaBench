
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;


 struct session* LIST_END (int *) ;
 struct session* LIST_FIRST (int *) ;
 struct session* LIST_NEXT (struct session*,int ) ;
 int closelog () ;
 scalar_t__ daemonize ;
 int end_session (struct session*) ;
 int entry ;
 int exit (int ) ;
 int sessions ;

void
exit_daemon(void)
{
 struct session *s, *next;

 for (s = LIST_FIRST(&sessions); s != LIST_END(&sessions); s = next) {
  next = LIST_NEXT(s, entry);
  end_session(s);
 }

 if (daemonize)
  closelog();

 exit(0);
}

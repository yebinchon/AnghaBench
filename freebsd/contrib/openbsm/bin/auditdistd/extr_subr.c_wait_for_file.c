
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int LOG_WARNING ;
 int PJDLOG_ASSERT (int) ;
 int kevent (int,int *,int ,struct kevent*,int,int *) ;
 int pjdlog_errno (int ,char*) ;
 int sleep (int) ;
 int wait_for_file_kq ;

void
wait_for_file(void)
{




 if (wait_for_file_kq == -1) {
  sleep(1);
  return;
 }
}

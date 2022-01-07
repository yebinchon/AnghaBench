
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int member_1; int member_0; } ;
typedef int fd_set ;
struct TYPE_2__ {int (* send_signal ) (int ) ;} ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int SIGINT ;
 int fprintf (int ,char*,int,char) ;
 int read (scalar_t__,char*,int) ;
 scalar_t__ remote_desc ;
 scalar_t__ select (scalar_t__,int *,int ,int ,struct timeval*) ;
 int stderr ;
 int stub1 (int ) ;
 TYPE_1__* the_target ;

__attribute__((used)) static void
input_interrupt (int unused)
{
  fd_set readset;
  struct timeval immediate = { 0, 0 };




  FD_ZERO (&readset);
  FD_SET (remote_desc, &readset);
  if (select (remote_desc + 1, &readset, 0, 0, &immediate) > 0)
    {
      int cc;
      char c;

      cc = read (remote_desc, &c, 1);

      if (cc != 1 || c != '\003')
 {
   fprintf (stderr, "input_interrupt, cc = %d c = %d\n", cc, c);
   return;
 }

      (*the_target->send_signal) (SIGINT);
    }
}

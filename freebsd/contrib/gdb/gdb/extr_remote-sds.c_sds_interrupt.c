
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBUFSIZ ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 scalar_t__ remote_debug ;
 int sds_interrupt_twice ;
 int sds_send (unsigned char*,int) ;
 int signal (int,int ) ;

__attribute__((used)) static void
sds_interrupt (int signo)
{
  unsigned char buf[PBUFSIZ];


  signal (signo, sds_interrupt_twice);

  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "sds_interrupt called\n");

  buf[0] = 25;
  sds_send (buf, 1);
}

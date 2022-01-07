
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBUFSIZ ;
 int error (char*) ;
 int pop_target () ;
 int puts_filtered (char*) ;
 int sds_send (char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
sds_detach (char *args, int from_tty)
{
  char buf[PBUFSIZ];

  if (args)
    error ("Argument given to \"detach\" when remotely debugging.");







  pop_target ();
  if (from_tty)
    puts_filtered ("Ending remote debugging.\n");
}

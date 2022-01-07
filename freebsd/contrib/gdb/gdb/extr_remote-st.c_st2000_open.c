
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LOG_FILE ;
 int baudrate ;
 char* dev_name ;
 int error (char*) ;
 int expect_prompt (int) ;
 int * fopen (char*,char*) ;
 int * log_file ;
 int perror_with_name (char*) ;
 int printf (char*,char*,char*) ;
 int printf_stdebug (char*) ;
 int push_target (int *) ;
 int serial_close (char*) ;
 int serial_open (char*) ;
 int serial_raw (int ) ;
 scalar_t__ serial_setbaudrate (int ,int ) ;
 int sscanf (char*,char*,char*,int *,char*) ;
 int st2000_close (int ) ;
 int st2000_desc ;
 int st2000_ops ;
 int target_preopen (int) ;
 char* target_shortname ;

__attribute__((used)) static void
st2000_open (char *args, int from_tty)
{
  int n;
  char junk[100];

  target_preopen (from_tty);

  n = sscanf (args, " %s %d %s", dev_name, &baudrate, junk);

  if (n != 2)
    error ("Bad arguments.  Usage: target st2000 <device> <speed>\nor target st2000 <host> <port>\n");


  st2000_close (0);

  st2000_desc = serial_open (dev_name);

  if (!st2000_desc)
    perror_with_name (dev_name);

  if (serial_setbaudrate (st2000_desc, baudrate))
    {
      serial_close (dev_name);
      perror_with_name (dev_name);
    }

  serial_raw (st2000_desc);

  push_target (&st2000_ops);
  printf_stdebug ("\003");

  expect_prompt (1);

  if (from_tty)
    printf ("Remote %s connected to %s\n", target_shortname,
     dev_name);
}

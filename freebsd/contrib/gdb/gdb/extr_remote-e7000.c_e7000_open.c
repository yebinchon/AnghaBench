
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETURN_MASK_ALL ;
 int baudrate ;
 int catch_errors (int ,char*,char*,int ) ;
 int dev_name ;
 int e7000_desc ;
 int e7000_ops ;
 int e7000_parse_device (char*,int ,int ) ;
 int e7000_start_remote ;
 int perror_with_name (int ) ;
 int printf_filtered (char*,int ,int ) ;
 int push_target (int *) ;
 int serial_close (int ) ;
 int serial_open (int ) ;
 int serial_raw (int ) ;
 scalar_t__ serial_setbaudrate (int ,int ) ;
 int target_preopen (int) ;
 int target_shortname ;

__attribute__((used)) static void
e7000_open (char *args, int from_tty)
{
  int n;

  target_preopen (from_tty);

  n = e7000_parse_device (args, dev_name, baudrate);

  push_target (&e7000_ops);

  e7000_desc = serial_open (dev_name);

  if (!e7000_desc)
    perror_with_name (dev_name);

  if (serial_setbaudrate (e7000_desc, baudrate))
    {
      serial_close (e7000_desc);
      perror_with_name (dev_name);
    }
  serial_raw (e7000_desc);




  if (!catch_errors (e7000_start_remote, (char *) 0,
       "Couldn't establish connection to remote target\n", RETURN_MASK_ALL))
    if (from_tty)
      printf_filtered ("Remote target %s connected to %s\n", target_shortname,
         dev_name);
}

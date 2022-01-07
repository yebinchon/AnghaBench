
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETURN_MASK_ALL ;
 int baud_rate ;
 int catch_errors (int ,int *,char*,int ) ;
 int error (char*) ;
 int just_started ;
 int perror_with_name (char*) ;
 int pop_target () ;
 int push_target (int *) ;
 int puts_filtered (char*) ;
 int sds_desc ;
 int sds_ops ;
 int sds_start_remote ;
 int serial_close (int ) ;
 int serial_flush_input (int ) ;
 int serial_open (char*) ;
 int serial_raw (int ) ;
 scalar_t__ serial_setbaudrate (int ,int) ;
 int target_preopen (int) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
sds_open (char *name, int from_tty)
{
  if (name == 0)
    error ("To open a remote debug connection, you need to specify what serial\ndevice is attached to the remote system (e.g. /dev/ttya).");


  target_preopen (from_tty);

  unpush_target (&sds_ops);

  sds_desc = serial_open (name);
  if (!sds_desc)
    perror_with_name (name);

  if (baud_rate != -1)
    {
      if (serial_setbaudrate (sds_desc, baud_rate))
 {
   serial_close (sds_desc);
   perror_with_name (name);
 }
    }


  serial_raw (sds_desc);



  serial_flush_input (sds_desc);

  if (from_tty)
    {
      puts_filtered ("Remote debugging using ");
      puts_filtered (name);
      puts_filtered ("\n");
    }
  push_target (&sds_ops);

  just_started = 1;




  if (!catch_errors (sds_start_remote, ((void*)0),
       "Couldn't establish connection to remote target\n",
       RETURN_MASK_ALL))
    pop_target ();
}

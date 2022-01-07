
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int BFD_ENDIAN_BIG ;
 int BFD_ENDIAN_LITTLE ;
 int QUIT ;
 int RDP_OPEN ;
 int RDP_OPEN_TYPE_COLD ;
 int RDP_OPEN_TYPE_RETURN_SEX ;
 int RDP_OPEN_TYPE_WARM ;





 int error (char*) ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stdlog ;
 int io ;
 int isgraph (int) ;
 int printf_filtered (char*) ;
 int printf_unfiltered (char*,...) ;
 int put_byte (int) ;
 int put_word (int ) ;
 scalar_t__ remote_debug ;
 int serial_flush_input (int ) ;
 int serial_flush_output (int ) ;
 int serial_readchar (int ,int) ;
 int sleep (int) ;
 int target_byte_order ;
 scalar_t__ time (int ) ;

__attribute__((used)) static void
rdp_init (int cold, int tty)
{
  int sync = 0;
  int type = cold ? RDP_OPEN_TYPE_COLD : RDP_OPEN_TYPE_WARM;
  int baudtry = 9600;

  time_t now = time (0);
  time_t stop_time = now + 10;


  while (time (0) < stop_time && !sync)
    {
      int restype;
      QUIT;

      serial_flush_input (io);
      serial_flush_output (io);

      if (tty)
 printf_unfiltered ("Trying to connect at %d baud.\n", baudtry);





      if (cold)
 {
   put_byte (132);
   while ((restype = serial_readchar (io, 1)) > 0)
     {
       switch (restype)
  {
  case 128:
    break;
  case 132:

    break;
  default:
    printf_unfiltered ("%c", isgraph (restype) ? restype : ' ');
    break;
  }
     }

   if (restype == 0)
     {

       printf_filtered ("\n");
     }
 }

      put_byte (RDP_OPEN);

      put_byte (type | RDP_OPEN_TYPE_RETURN_SEX);
      put_word (0);

      while (!sync && (restype = serial_readchar (io, 1)) > 0)
 {
   if (remote_debug)
     fprintf_unfiltered (gdb_stdlog, "[%02x]\n", restype);

   switch (restype)
     {
     case 128:
       break;

     case 132:
       while ((restype = serial_readchar (io, 1)) == 132)
  ;
       do
  {
    printf_unfiltered ("%c", isgraph (restype) ? restype : ' ');
  }
       while ((restype = serial_readchar (io, 1)) > 0);

       if (tty)
  {
    printf_unfiltered ("\nThe board has sent notification that it was reset.\n");
    printf_unfiltered ("Waiting for it to settle down...\n");
  }
       sleep (3);
       if (tty)
  printf_unfiltered ("\nTrying again.\n");
       cold = 0;
       break;

     default:
       break;

     case 131:
       {
  int resval = serial_readchar (io, 1);

  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "[%02x]\n", resval);

  switch (resval)
    {
    case 128:
      break;
    case 129:
      sync = 1;
      break;
    case 130:
      sync = 1;
      break;
    default:
      break;
    }
       }
     }
 }
    }

  if (!sync)
    {
      error ("Couldn't reset the board, try pressing the reset button");
    }
}

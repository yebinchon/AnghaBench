
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_MAXLEN ;
 scalar_t__ MON_IDT ;
 int mips_desc ;
 int mips_error (char*) ;
 int mips_expect (char*) ;
 scalar_t__ mips_monitor ;
 scalar_t__ mips_receive_packet (char*,int,int) ;
 scalar_t__ mips_receive_seq ;
 int mips_send_command (char*,int ) ;
 scalar_t__ mips_send_seq ;
 int serial_write (int ,char*,int) ;
 int sleep (int) ;

__attribute__((used)) static void
mips_enter_debug (void)
{

  mips_send_seq = 0;
  mips_receive_seq = 0;

  if (mips_monitor != MON_IDT)
    mips_send_command ("debug\r", 0);
  else
    mips_send_command ("db tty0\r", 0);

  sleep (1);
  serial_write (mips_desc, "\r", sizeof "\r" - 1);





  if (mips_monitor != MON_IDT)
    mips_expect ("\r");

  {
    char buff[DATA_MAXLEN + 1];
    if (mips_receive_packet (buff, 1, 3) < 0)
      mips_error ("Failed to initialize (didn't receive packet).");
  }
}

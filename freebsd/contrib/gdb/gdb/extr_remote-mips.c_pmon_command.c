
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_MAXLEN ;
 int mips_receive_packet (char*,int,int ) ;
 int mips_receive_wait ;
 int mips_send_packet (char*,int) ;
 int printf_filtered (char*,char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
pmon_command (char *args, int from_tty)
{
  char buf[DATA_MAXLEN + 1];
  int rlen;

  sprintf (buf, "0x0 %s", args);
  mips_send_packet (buf, 1);
  printf_filtered ("Send packet: %s\n", buf);

  rlen = mips_receive_packet (buf, 1, mips_receive_wait);
  buf[rlen] = '\0';
  printf_filtered ("Received packet: %s\n", buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int immediate_quit ;
 int next_msg_id ;
 int printf_unfiltered (char*,...) ;
 int readchar (int) ;
 int sds_desc ;
 int sds_send (unsigned char*,int) ;
 int serial_write (int ,char*,int) ;
 int start_remote () ;

__attribute__((used)) static int
sds_start_remote (void *dummy)
{
  int c;
  unsigned char buf[200];

  immediate_quit++;


  serial_write (sds_desc, "{#*\r\n", 5);
  serial_write (sds_desc, "{#}\r\n", 5);

  while ((c = readchar (1)) >= 0)
    printf_unfiltered ("%c", c);
  printf_unfiltered ("\n");

  next_msg_id = 251;

  buf[0] = 26;
  sds_send (buf, 1);

  buf[0] = 0;
  sds_send (buf, 1);

  immediate_quit--;

  start_remote ();
  return 1;
}

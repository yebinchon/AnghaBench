
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_filtered (int ,char*,unsigned char,unsigned char) ;
 int fputs_filtered (char*,int ) ;
 int fromhex (int) ;
 int gdb_stdlog ;
 int memset (char*,char,int) ;
 int printf_filtered (char*,int) ;
 int puts_filtered (char*) ;
 int readchar (int ) ;
 int remote_debug ;
 int remote_timeout ;

__attribute__((used)) static long
read_frame (char *buf,
     long sizeof_buf)
{
  unsigned char csum;
  long bc;
  int c;

  csum = 0;
  bc = 0;

  while (1)
    {

      c = readchar (remote_timeout);
      switch (c)
 {
 case 128:
   if (remote_debug)
     fputs_filtered ("Timeout in mid-packet, retrying\n", gdb_stdlog);
   return -1;
 case '$':
   if (remote_debug)
     fputs_filtered ("Saw new packet start in middle of old one\n",
       gdb_stdlog);
   return -1;
 case '#':
   {
     unsigned char pktcsum;
     int check_0 = 0;
     int check_1 = 0;

     buf[bc] = '\0';

     check_0 = readchar (remote_timeout);
     if (check_0 >= 0)
       check_1 = readchar (remote_timeout);

     if (check_0 == 128 || check_1 == 128)
       {
  if (remote_debug)
    fputs_filtered ("Timeout in checksum, retrying\n", gdb_stdlog);
  return -1;
       }
     else if (check_0 < 0 || check_1 < 0)
       {
  if (remote_debug)
    fputs_filtered ("Communication error in checksum\n", gdb_stdlog);
  return -1;
       }

     pktcsum = (fromhex (check_0) << 4) | fromhex (check_1);
     if (csum == pktcsum)
              return bc;

     if (remote_debug)
       {
  fprintf_filtered (gdb_stdlog,
         "Bad checksum, sentsum=0x%x, csum=0x%x, buf=",
      pktcsum, csum);
  fputs_filtered (buf, gdb_stdlog);
  fputs_filtered ("\n", gdb_stdlog);
       }


     return -1;
   }
 case '*':
          {
     int repeat;
      csum += c;

     c = readchar (remote_timeout);
     csum += c;
     repeat = c - ' ' + 3;



     if (repeat > 0 && repeat <= 255
  && bc > 0
                && bc + repeat - 1 < sizeof_buf - 1)
       {
  memset (&buf[bc], buf[bc - 1], repeat);
  bc += repeat;
  continue;
       }

     buf[bc] = '\0';
     printf_filtered ("Repeat count %d too large for buffer: ", repeat);
     puts_filtered (buf);
     puts_filtered ("\n");
     return -1;
   }
 default:
   if (bc < sizeof_buf - 1)
     {
       buf[bc++] = c;
       csum += c;
       continue;
     }

   buf[bc] = '\0';
   puts_filtered ("Remote packet too long: ");
   puts_filtered (buf);
   puts_filtered ("\n");

   return -1;
 }
    }
}

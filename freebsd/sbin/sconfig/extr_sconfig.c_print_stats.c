
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_statistics {unsigned long rintr; unsigned long ibytes; unsigned long ipkts; unsigned long ierrs; unsigned long tintr; unsigned long obytes; unsigned long opkts; unsigned long oerrs; unsigned long mintr; } ;


 int SERIAL_GETSTAT ;
 char* chan_name ;
 char* format_long (unsigned long) ;
 scalar_t__ ioctl (int,int ,struct serial_statistics*) ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ sflag ;

__attribute__((used)) static void
print_stats (int fd, int need_header)
{
 struct serial_statistics st;
 unsigned long sarr [9];
 int i;

 if (ioctl (fd, SERIAL_GETSTAT, &st) < 0) {
  perror ("getting statistics");
  return;
 }
 if (need_header) {
  if (sflag) {
   printf ("        ------------Receive-----------      "
    "------------Transmit----------\n");
   printf ("Channel Interrupts  Packets     Errors      "
    "Interrupts  Packets     Errors\n");
  }
  else {
   printf ("        --------Receive---------------  "
    "--------Transmit--------------  Modem\n");
   printf ("Channel Intrs   Bytes   Packets Errors  "
    "Intrs   Bytes   Packets Errors  Intrs\n");
  }
 }

 sarr [0] = st.rintr;
 sarr [1] = st.ibytes;
 sarr [2] = st.ipkts;
 sarr [3] = st.ierrs;
 sarr [4] = st.tintr;
 sarr [5] = st.obytes;
 sarr [6] = st.opkts;
 sarr [7] = st.oerrs;
 sarr [8] = st.mintr;
 printf ("%s", chan_name);
 if (sflag) {
  printf ("\t%-12lu%-12lu%-12lu%-12lu%-12lu%-12lu", sarr[0],
   sarr[2], sarr[3], sarr[4], sarr[6], sarr[7]);
 } else {
  for (i = 0; i < 9; i++)
   printf ("\t%s", format_long (sarr [i]));
  printf ("\n");
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int,int ) ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int TD_PTYDATA ;
 int TD_REPORT ;
 int cleanup (int ) ;
 scalar_t__ errno ;
 int output_data (char*,int) ;
 scalar_t__ pbackp ;
 scalar_t__ pfrontp ;
 int printdata (char*,scalar_t__,int) ;
 int pty ;
 scalar_t__ ptyobuf ;
 int write (int ,scalar_t__,int) ;

void
ptyflush(void)
{
 int n;

 if ((n = pfrontp - pbackp) > 0) {
  DIAG(TD_REPORT | TD_PTYDATA,
      output_data("td: ptyflush %d chars\r\n", n));
  DIAG(TD_PTYDATA, printdata("pd", pbackp, n));
  n = write(pty, pbackp, n);
 }
 if (n < 0) {
  if (errno == EWOULDBLOCK || errno == EINTR)
   return;
  cleanup(0);
 }
 pbackp += n;
 if (pbackp == pfrontp)
  pbackp = pfrontp = ptyobuf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int ,int ) ;
 int LOG_INFO ;
 int TD_REPORT ;
 int exit (int) ;
 scalar_t__ nbackp ;
 scalar_t__ ncc ;
 int net ;
 int netflush () ;
 int netibuf ;
 int netip ;
 scalar_t__ nfrontp ;
 int output_data (char*,...) ;
 int pbackp ;
 int pfrontp ;
 int ptyobuf ;
 scalar_t__ read (int ,int ,int) ;
 int syslog (int ,char*) ;
 int telrcv () ;

void
ttloop()
{

    DIAG(TD_REPORT, output_data("td: ttloop\r\n"));
    if (nfrontp - nbackp > 0) {
 netflush();
    }
    ncc = read(net, netibuf, sizeof netibuf);
    if (ncc < 0) {
 syslog(LOG_INFO, "ttloop:  read: %m");
 exit(1);
    } else if (ncc == 0) {
 syslog(LOG_INFO, "ttloop:  peer died: %m");
 exit(1);
    }
    DIAG(TD_REPORT, output_data("td: ttloop read %d chars\r\n", ncc));
    netip = netibuf;
    telrcv();
    if (ncc > 0) {
 pfrontp = pbackp = ptyobuf;
 telrcv();
    }
}

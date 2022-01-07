
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enstats {int enStat_Rcnt; scalar_t__ enStat_Rdrops; int enStat_Reads; int enStat_MaxRead; } ;


 int EIOSTATS ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*,int,...) ;
 int ioctl (int,int ,struct enstats*) ;
 int perror (char*) ;
 int putc (char,int ) ;
 int stderr ;

void
wrapup(int fd)
{
 close(fd);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int intmax_t ;
struct TYPE_2__ {scalar_t__ c_date; scalar_t__ c_ddate; char* c_host; char* c_label; int c_dev; int c_filesys; scalar_t__ c_level; } ;


 int _time64_to_time (scalar_t__) ;
 char* ctime (int *) ;
 int fprintf (int ,char*,char*,...) ;
 TYPE_1__ spcl ;
 int stderr ;
 int stdout ;

void
printdumpinfo(void)
{
 time_t t;
 t = _time64_to_time(spcl.c_date);
 fprintf(stdout, "Dump   date: %s", ctime(&t));
 t = _time64_to_time(spcl.c_ddate);
 fprintf(stdout, "Dumped from: %s",
     (spcl.c_ddate == 0) ? "the epoch\n" : ctime(&t));
 if (spcl.c_host[0] == '\0')
  return;
 fprintf(stderr, "Level %jd dump of %s on %s:%s\n",
     (intmax_t)spcl.c_level, spcl.c_filesys, spcl.c_host, spcl.c_dev);
 fprintf(stderr, "Label: %s\n", spcl.c_label);
}

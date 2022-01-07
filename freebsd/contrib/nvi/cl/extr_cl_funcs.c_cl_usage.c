
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* USAGE ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
cl_usage(void)
{



 (void)fprintf(stderr, "%s", "usage: ex [-eFRrSsv] [-c command] [-t tag] [-w size] [file ...]\nusage: vi [-eFlRrSv] [-c command] [-t tag] [-w size] [file ...]\n");

}

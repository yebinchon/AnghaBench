
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ftpd_logwtmp_asl (char*,char*,char*) ;
 int ftpd_logwtmp_wtmp (char*,char*,char*) ;

void
ftpd_logwtmp(char *line, char *name, char *host)
{



    ftpd_logwtmp_wtmp(line, name, host);

}

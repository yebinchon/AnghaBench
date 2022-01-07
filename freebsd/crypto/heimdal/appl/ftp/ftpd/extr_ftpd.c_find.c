
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 scalar_t__ fgets (char*,int,int *) ;
 char* ftp_rooted (char*) ;
 int ftpd_pclose (int *) ;
 int * ftpd_popen (char*,char*,int,int) ;
 int lreply (int,char*) ;
 int nreply (char*,char*) ;
 int perror_reply (int,char*) ;
 int reply (int,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;

int
find(char *pattern)
{
    char line[1024];
    FILE *f;

    snprintf(line, sizeof(line),
      "/bin/locate -d %s -- %s",
      ftp_rooted("/etc/locatedb"),
      pattern);
    f = ftpd_popen(line, "r", 1, 1);
    if(f == ((void*)0)){
 perror_reply(550, "/bin/locate");
 return 1;
    }
    lreply(200, "Output from find.");
    while(fgets(line, sizeof(line), f)){
 if(line[strlen(line)-1] == '\n')
     line[strlen(line)-1] = 0;
 nreply("%s", line);
    }
    reply(200, "Done");
    ftpd_pclose(f);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int EOF ;
 int LINE_MAX ;
 int dologout (int) ;
 scalar_t__ ferror (int *) ;
 int ftpd_pclose (int *) ;
 int * ftpd_popen (char*,char*,int,int ) ;
 int getc (int *) ;
 int lreply (int,char*,char*) ;
 int perror_reply (int,char*) ;
 int putc (int,int *) ;
 int reply (int,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int * stdout ;

void
statfilecmd(char *filename)
{
 FILE *fin;
 int c;
 char line[LINE_MAX];

 snprintf(line, sizeof(line), "/bin/ls -la -- %s", filename);
 fin = ftpd_popen(line, "r", 1, 0);
 lreply(211, "status of %s:", filename);
 while ((c = getc(fin)) != EOF) {
  if (c == '\n') {
   if (ferror(stdout)){
    perror_reply(421, "control connection");
    ftpd_pclose(fin);
    dologout(1);

   }
   if (ferror(fin)) {
    perror_reply(551, filename);
    ftpd_pclose(fin);
    return;
   }
   putc('\r', stdout);
  }
  putc(c, stdout);
 }
 ftpd_pclose(fin);
 reply(211, "End of Status");
}

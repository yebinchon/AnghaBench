
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int LOG_DEBUG ;
 scalar_t__ debug ;
 int fflush (int ) ;
 int sec_fprintf (int ,char*,char*) ;
 int snprintf (char*,int,char*,...) ;
 int stdout ;
 int strlen (char*) ;
 int syslog (int ,char*,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void
int_reply(int n, char *c, const char *fmt, va_list ap)
{
    char buf[10240];
    char *p;
    p=buf;
    if(n){
 snprintf(p, sizeof(buf), "%d%s", n, c);
 p+=strlen(p);
    }
    vsnprintf(p, sizeof(buf) - strlen(p), fmt, ap);
    p+=strlen(p);
    snprintf(p, sizeof(buf) - strlen(p), "\r\n");
    p+=strlen(p);
    sec_fprintf(stdout, "%s", buf);
    fflush(stdout);
    if (debug)
 syslog(LOG_DEBUG, "<--- %s- ", buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 int fatal (int,char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 char* strerror (int) ;

void
fatalperror_errno(int f, const char *msg, int error)
{
    char buf[BUFSIZ];

    snprintf(buf, sizeof(buf), "%s: %s", msg, strerror(error));
    fatal(f, buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 int errno ;
 int fatal (int,char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 char* strerror (int ) ;

void
fatalperror(int f, const char *msg)
{
 char buf[BUFSIZ];

 (void) snprintf(buf, sizeof(buf), "%s: %s", msg, strerror(errno));
 fatal(f, buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fatal (int,int *,char*,char*) ;
 char* malloc (size_t) ;
 int net_read (int,char*,int) ;
 int strerror (int ) ;
 int syslog_and_die (char*,int ) ;

__attribute__((used)) static char *
read_str (int s, size_t sz, char *expl)
{
    char *str = malloc(sz);
    char *p = str;
    if(str == ((void*)0))
 fatal(s, ((void*)0), "%s too long", expl);
    while(p < str + sz) {
 if(net_read(s, p, 1) != 1)
     syslog_and_die("read: %s", strerror(errno));
 if(*p == '\0')
     return str;
 p++;
    }
    fatal(s, ((void*)0), "%s too long", expl);
}

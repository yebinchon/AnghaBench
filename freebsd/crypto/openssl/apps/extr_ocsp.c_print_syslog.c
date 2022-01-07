
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAXERRLEN ;
 int syslog (int,char*,int,char const*) ;

__attribute__((used)) static int print_syslog(const char *str, size_t len, void *levPtr)
{
    int level = *(int *)levPtr;
    int ilen = (len > MAXERRLEN) ? MAXERRLEN : len;

    syslog(level, "%.*s", ilen, str);

    return ilen;
}

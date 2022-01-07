
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGETS (int,int,char*) ;
 int progname ;
 int xprintf (int ,int ,char const*) ;

__attribute__((used)) static void
dstart(const char *from)
{
    xprintf(CGETS(12, 1, "%s: Trying to start from \"%s\"\n"), progname, from);
}

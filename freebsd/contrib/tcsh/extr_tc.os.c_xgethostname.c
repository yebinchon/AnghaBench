
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* sysname; char* nodename; char* release; char* version; char* machine; } ;


 int CGETS (int,int,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int uname (struct utsname*) ;
 int xprintf (int ,char*) ;

int
xgethostname(char *name, int namlen)
{

    int i, retval;
    struct utsname uts;

    retval = uname(&uts);
    i = strlen(uts.nodename) + 1;
    (void) strncpy(name, uts.nodename, i < namlen ? i : namlen);

    return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGETS (int,int,char*) ;
 char** sys_errlist ;
 int sys_nerr ;
 char* xasprintf (int ,int) ;
 int xfree (char*) ;

char *
xstrerror(int i)
{
    if (i >= 0 && i < sys_nerr) {
 return sys_errlist[i];
    } else {
 static char *errbuf;

 xfree(errbuf);
 errbuf = xasprintf(CGETS(23, 13, "Unknown Error: %d"), i);
 return errbuf;
    }
}

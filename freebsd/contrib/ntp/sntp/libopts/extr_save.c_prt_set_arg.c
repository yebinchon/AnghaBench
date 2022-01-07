
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptDesc ;
typedef int FILE ;


 scalar_t__ AGALOC (size_t,char*) ;
 int AGFREE (char*) ;
 int memcpy (char*,char*,size_t) ;
 char* optionMemberList (int *) ;
 int prt_entry (int *,int *,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
prt_set_arg(FILE * fp, tOptDesc * od)
{
    char * list = optionMemberList(od);
    size_t len = strlen(list);
    char * buf = (char *)AGALOC(len + 3, "dir name");
    *buf= '=';
    memcpy(buf+1, list, len + 1);
    prt_entry(fp, od, buf);
    AGFREE(buf);
    AGFREE(list);
}

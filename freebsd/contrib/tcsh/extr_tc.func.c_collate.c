
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 scalar_t__ EINVAL ;
 int ERR_SYSTEM ;
 scalar_t__ errno ;
 int const* short2str (int const*) ;
 int stderror (int ,char*,int ) ;
 int strcmp (char*,char*) ;
 int strcoll (char*,char*) ;
 int strerror (scalar_t__) ;
 char* strip (char*) ;
 char* strsave (int const*) ;
 int xfree (char*) ;

int
collate(const Char *a, const Char *b)
{
    int rv;





    char *sa = strip(strsave(a));
    char *sb = strip(strsave(b));
    rv = strcmp(sa, sb);


    xfree(sa);
    xfree(sb);

    return rv;
}

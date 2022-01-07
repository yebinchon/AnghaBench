
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;


 int CGETS (int,int,char*) ;
 int ERR_EXISTS ;
 int NOCLOBBER_ASK ;
 int NOCLOBBER_NOTEMPTY ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ getYN (int ) ;
 int no_clobber ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderror (int ,char const*) ;

__attribute__((used)) static void
chkclob(const char *cp)
{
    struct stat stb;

    if (stat(cp, &stb) < 0)
 return;
    if (S_ISCHR(stb.st_mode))
 return;
    if (no_clobber & NOCLOBBER_NOTEMPTY && stb.st_size == 0)
 return;
    if (no_clobber & NOCLOBBER_ASK) {
 if (getYN(CGETS(22, 15,
     "Do you really want to overwrite an existing file? [N/y] ")))
     return;
    }

    stderror(ERR_EXISTS, cp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
nfcmp(char *nf, char *rec)
{
    char *cp, tmp;
    int ret;

    for (cp = rec; *cp != ':'; cp++)
 ;

    tmp = *(cp + 1);
    *(cp + 1) = '\0';
    ret = strcmp(nf, rec);
    *(cp + 1) = tmp;

    return (ret);
}

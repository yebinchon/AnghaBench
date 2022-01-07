
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sname; } ;
typedef TYPE_1__ X509_PURPOSE ;


 TYPE_1__* X509_PURPOSE_get0 (int) ;
 int X509_PURPOSE_get_count () ;
 scalar_t__ strcmp (int ,char const*) ;

int X509_PURPOSE_get_by_sname(const char *sname)
{
    int i;
    X509_PURPOSE *xptmp;
    for (i = 0; i < X509_PURPOSE_get_count(); i++) {
        xptmp = X509_PURPOSE_get0(i);
        if (strcmp(xptmp->sname, sname) == 0)
            return i;
    }
    return -1;
}

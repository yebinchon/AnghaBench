
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* sname; } ;
typedef TYPE_1__ X509_PURPOSE ;



char *X509_PURPOSE_get0_sname(const X509_PURPOSE *xp)
{
    return xp->sname;
}

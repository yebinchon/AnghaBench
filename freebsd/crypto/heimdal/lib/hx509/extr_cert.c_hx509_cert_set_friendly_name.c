
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_cert ;
struct TYPE_3__ {int * friendlyname; } ;


 int ENOMEM ;
 int free (int *) ;
 int * strdup (char const*) ;

int
hx509_cert_set_friendly_name(hx509_cert cert, const char *name)
{
    if (cert->friendlyname)
 free(cert->friendlyname);
    cert->friendlyname = strdup(name);
    if (cert->friendlyname == ((void*)0))
 return ENOMEM;
    return 0;
}

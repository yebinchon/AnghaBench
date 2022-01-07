
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int purpose; } ;
typedef TYPE_1__ X509_PURPOSE ;


 int X509_PURPOSE_COUNT ;
 int X509_PURPOSE_MAX ;
 int X509_PURPOSE_MIN ;
 int sk_X509_PURPOSE_find (int *,TYPE_1__*) ;
 int * xptable ;

int X509_PURPOSE_get_by_id(int purpose)
{
    X509_PURPOSE tmp;
    int idx;

    if ((purpose >= X509_PURPOSE_MIN) && (purpose <= X509_PURPOSE_MAX))
        return purpose - X509_PURPOSE_MIN;
    if (xptable == ((void*)0))
        return -1;
    tmp.purpose = purpose;
    idx = sk_X509_PURPOSE_find(xptable, &tmp);
    if (idx < 0)
        return -1;
    return idx + X509_PURPOSE_COUNT;
}

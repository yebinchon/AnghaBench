
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_query ;
typedef int hx509_lock ;
typedef int * hx509_cert ;



int
_hx509_lock_find_cert(hx509_lock lock, const hx509_query *q, hx509_cert *c)
{
    *c = ((void*)0);
    return 0;
}

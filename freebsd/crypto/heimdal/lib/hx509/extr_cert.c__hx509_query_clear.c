
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_query ;


 int memset (int *,int ,int) ;

void
_hx509_query_clear(hx509_query *q)
{
    memset(q, 0, sizeof(*q));
}

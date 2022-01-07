
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int hx509_context ;
typedef int hx509_ca_tbs ;


 int hx509_ca_tbs_set_notAfter (int ,int ,scalar_t__) ;
 scalar_t__ time (int *) ;

int
hx509_ca_tbs_set_notAfter_lifetime(hx509_context context,
       hx509_ca_tbs tbs,
       time_t delta)
{
    return hx509_ca_tbs_set_notAfter(context, tbs, time(((void*)0)) + delta);
}

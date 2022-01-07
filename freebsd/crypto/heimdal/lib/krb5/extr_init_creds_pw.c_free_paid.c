
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pa_info_data {scalar_t__ s2kparams; int salt; } ;
typedef int krb5_context ;


 int krb5_free_data (int ,scalar_t__) ;
 int krb5_free_salt (int ,int ) ;

__attribute__((used)) static void
free_paid(krb5_context context, struct pa_info_data *ppaid)
{
    krb5_free_salt(context, ppaid->salt);
    if (ppaid->s2kparams)
 krb5_free_data(context, ppaid->s2kparams);
}

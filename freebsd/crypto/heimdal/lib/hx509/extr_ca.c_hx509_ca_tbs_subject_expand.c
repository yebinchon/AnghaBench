
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_env ;
typedef int hx509_context ;
typedef TYPE_1__* hx509_ca_tbs ;
struct TYPE_3__ {int subject; } ;


 int hx509_name_expand (int ,int ,int ) ;

int
hx509_ca_tbs_subject_expand(hx509_context context,
       hx509_ca_tbs tbs,
       hx509_env env)
{
    return hx509_name_expand(context, tbs->subject, env);
}

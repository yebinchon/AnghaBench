
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef TYPE_1__* krb5_context ;
struct TYPE_5__ {int num_kt_types; int * kt_types; } ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int krb5_set_error_message (TYPE_1__*,int ,int ) ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static krb5_error_code
kt_ops_copy(krb5_context context, const krb5_context src_context)
{
    context->num_kt_types = 0;
    context->kt_types = ((void*)0);

    if (src_context->num_kt_types == 0)
 return 0;

    context->kt_types = malloc(sizeof(context->kt_types[0]) * src_context->num_kt_types);
    if (context->kt_types == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    context->num_kt_types = src_context->num_kt_types;
    memcpy(context->kt_types, src_context->kt_types,
    sizeof(context->kt_types[0]) * src_context->num_kt_types);

    return 0;
}

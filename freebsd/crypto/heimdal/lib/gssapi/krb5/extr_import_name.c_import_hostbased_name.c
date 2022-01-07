
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ gss_name_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 scalar_t__ GSS_S_BAD_NAME ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ KRB5_PARSE_ILLCHAR ;
 scalar_t__ KRB5_PARSE_MALFORMED ;
 int MAGIC_HOSTBASED_NAME_TYPE ;
 int free (char*) ;
 scalar_t__ krb5_make_principal (int ,int **,int *,char*,char*,int *) ;
 int krb5_principal_set_type (int ,int *,int ) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static OM_uint32
import_hostbased_name (OM_uint32 *minor_status,
         krb5_context context,
         const gss_buffer_t input_name_buffer,
         gss_name_t *output_name)
{
    krb5_principal princ = ((void*)0);
    krb5_error_code kerr;
    char *tmp, *p, *host = ((void*)0);

    tmp = malloc (input_name_buffer->length + 1);
    if (tmp == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }
    memcpy (tmp,
     input_name_buffer->value,
     input_name_buffer->length);
    tmp[input_name_buffer->length] = '\0';

    p = strchr (tmp, '@');
    if (p != ((void*)0)) {
 *p = '\0';
 host = p + 1;
    }

    kerr = krb5_make_principal(context, &princ, ((void*)0), tmp, host, ((void*)0));
    free (tmp);
    *minor_status = kerr;
    if (kerr == KRB5_PARSE_ILLCHAR || kerr == KRB5_PARSE_MALFORMED)
 return GSS_S_BAD_NAME;
    else if (kerr)
 return GSS_S_FAILURE;

    krb5_principal_set_type(context, princ, MAGIC_HOSTBASED_NAME_TYPE);
    *output_name = (gss_name_t)princ;

    return 0;
}

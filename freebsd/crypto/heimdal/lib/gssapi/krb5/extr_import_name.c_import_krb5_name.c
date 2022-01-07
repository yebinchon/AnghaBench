
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_context ;
typedef int gss_name_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int value; } ;
typedef int OM_uint32 ;


 int ENOMEM ;
 int GSS_S_FAILURE ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int parse_krb5_name (int *,int ,char*,int *) ;

__attribute__((used)) static OM_uint32
import_krb5_name (OM_uint32 *minor_status,
    krb5_context context,
    const gss_buffer_t input_name_buffer,
    gss_name_t *output_name)
{
    OM_uint32 ret;
    char *tmp;

    tmp = malloc (input_name_buffer->length + 1);
    if (tmp == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }
    memcpy (tmp,
     input_name_buffer->value,
     input_name_buffer->length);
    tmp[input_name_buffer->length] = '\0';

    ret = parse_krb5_name(minor_status, context, tmp, output_name);
    free(tmp);

    return ret;
}

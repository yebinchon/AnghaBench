
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int krb5_context ;
typedef int gss_name_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_5__ {int length; char* elements; } ;
struct TYPE_4__ {int length; unsigned char* value; } ;
typedef int OM_uint32 ;


 int ENOMEM ;
 TYPE_3__* GSS_KRB5_MECHANISM ;
 int GSS_S_BAD_NAME ;
 int GSS_S_FAILURE ;
 int free (char*) ;
 char* malloc (int) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 int memcpy (char*,unsigned char*,int) ;
 int parse_krb5_name (int *,int ,char*,int *) ;

__attribute__((used)) static OM_uint32
import_export_name (OM_uint32 *minor_status,
      krb5_context context,
      const gss_buffer_t input_name_buffer,
      gss_name_t *output_name)
{
    unsigned char *p;
    uint32_t length;
    OM_uint32 ret;
    char *name;

    if (input_name_buffer->length < 10 + GSS_KRB5_MECHANISM->length)
 return GSS_S_BAD_NAME;



    p = input_name_buffer->value;

    if (memcmp(&p[0], "\x04\x01\x00", 3) != 0 ||
 p[3] != GSS_KRB5_MECHANISM->length + 2 ||
 p[4] != 0x06 ||
 p[5] != GSS_KRB5_MECHANISM->length ||
 memcmp(&p[6], GSS_KRB5_MECHANISM->elements,
        GSS_KRB5_MECHANISM->length) != 0)
 return GSS_S_BAD_NAME;

    p += 6 + GSS_KRB5_MECHANISM->length;

    length = p[0] << 24 | p[1] << 16 | p[2] << 8 | p[3];
    p += 4;

    if (length > input_name_buffer->length - 10 - GSS_KRB5_MECHANISM->length)
 return GSS_S_BAD_NAME;

    name = malloc(length + 1);
    if (name == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }
    memcpy(name, p, length);
    name[length] = '\0';

    ret = parse_krb5_name(minor_status, context, name, output_name);
    free(name);

    return ret;
}

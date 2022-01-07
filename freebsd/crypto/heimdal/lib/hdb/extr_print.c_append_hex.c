
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_3__ {char* data; size_t length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 int append_string (int ,int *,char*,...) ;
 int free (char*) ;
 int hex_encode (char*,size_t,char**) ;
 int isalnum (unsigned char) ;

__attribute__((used)) static krb5_error_code
append_hex(krb5_context context, krb5_storage *sp, krb5_data *data)
{
    int printable = 1;
    size_t i;
    char *p;

    p = data->data;
    for(i = 0; i < data->length; i++)
 if(!isalnum((unsigned char)p[i]) && p[i] != '.'){
     printable = 0;
     break;
 }
    if(printable)
 return append_string(context, sp, "\"%.*s\"",
        data->length, data->data);
    hex_encode(data->data, data->length, &p);
    append_string(context, sp, "%s", p);
    free(p);
    return 0;
}

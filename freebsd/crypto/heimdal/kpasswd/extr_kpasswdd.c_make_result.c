
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {char* data; int length; } ;
typedef TYPE_1__ krb5_data ;


 int asprintf (char**,char*,int,int,char const*) ;
 int context ;
 int krb5_data_zero (TYPE_1__*) ;
 int krb5_warnx (int ,char*) ;

__attribute__((used)) static int
make_result (krb5_data *data,
      uint16_t result_code,
      const char *expl)
{
    char *str;
    krb5_data_zero (data);

    data->length = asprintf (&str,
        "%c%c%s",
        (result_code >> 8) & 0xFF,
        result_code & 0xFF,
        expl);

    if (str == ((void*)0)) {
 krb5_warnx (context, "Out of memory generating error reply");
 return 1;
    }
    data->data = str;
    return 0;
}

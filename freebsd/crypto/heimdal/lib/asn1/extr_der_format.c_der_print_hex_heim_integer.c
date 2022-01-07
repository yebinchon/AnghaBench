
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ negative; int length; int data; } ;
typedef TYPE_1__ heim_integer ;


 int ENOMEM ;
 scalar_t__ asprintf (char**,char*,char*) ;
 int free (char*) ;
 scalar_t__ hex_encode (int ,int ,char**) ;

int
der_print_hex_heim_integer (const heim_integer *data, char **p)
{
    ssize_t len;
    char *q;

    len = hex_encode(data->data, data->length, p);
    if (len < 0)
 return ENOMEM;

    if (data->negative) {
 len = asprintf(&q, "-%s", *p);
 free(*p);
 if (len < 0)
     return ENOMEM;
 *p = q;
    }
    return 0;
}

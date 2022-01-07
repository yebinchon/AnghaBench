
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; scalar_t__ data; } ;
typedef TYPE_1__ krb5_data ;


 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static int
hex_to_octet_string(const char *ptr, krb5_data *data)
{
    size_t i;
    unsigned int v;
    for(i = 0; i < data->length; i++) {
 if(sscanf(ptr + 2 * i, "%02x", &v) != 1)
     return -1;
 ((unsigned char*)data->data)[i] = v;
    }
    return 2 * i;
}

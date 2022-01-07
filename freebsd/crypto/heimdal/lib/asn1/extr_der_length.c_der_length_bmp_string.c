
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
typedef TYPE_1__ heim_bmp_string ;



size_t
der_length_bmp_string (const heim_bmp_string *data)
{
    return data->length * 2;
}

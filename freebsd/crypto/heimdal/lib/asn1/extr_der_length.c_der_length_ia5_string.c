
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; } ;
typedef TYPE_1__ heim_ia5_string ;



size_t
der_length_ia5_string (const heim_ia5_string *data)
{
    return data->length;
}

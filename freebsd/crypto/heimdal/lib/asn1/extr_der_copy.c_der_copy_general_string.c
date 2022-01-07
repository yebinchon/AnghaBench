
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * heim_general_string ;


 int ENOMEM ;
 int * strdup (int * const) ;

int
der_copy_general_string (const heim_general_string *from,
    heim_general_string *to)
{
    *to = strdup(*from);
    if(*to == ((void*)0))
 return ENOMEM;
    return 0;
}

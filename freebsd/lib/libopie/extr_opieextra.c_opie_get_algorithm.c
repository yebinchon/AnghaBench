
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__* opie_algorithm_table ;
 size_t opie_hash_type ;

const char *
opie_get_algorithm()
{
 return(opie_algorithm_table[opie_hash_type].name);
}

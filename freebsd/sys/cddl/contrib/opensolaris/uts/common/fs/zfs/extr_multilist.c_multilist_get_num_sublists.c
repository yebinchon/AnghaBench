
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int ml_num_sublists; } ;
typedef TYPE_1__ multilist_t ;



unsigned int
multilist_get_num_sublists(multilist_t *ml)
{
 return (ml->ml_num_sublists);
}

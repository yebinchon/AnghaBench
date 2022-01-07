
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ SSL_COMP ;



const char *SSL_COMP_get0_name(const SSL_COMP *comp)
{

    return comp->name;



}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ Symbol ;


 int is_supported_type_p (int ) ;

int
is_template_compat (const Symbol *s)
{
    return is_supported_type_p(s->type);
}

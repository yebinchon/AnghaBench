
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gen_name; } ;
typedef TYPE_1__ Symbol ;
typedef int FILE ;


 int gen_extern_stubs (int *,int ) ;
 int * get_code_file () ;
 scalar_t__ template_flag ;

void
gen_template_import(const Symbol *s)
{
    FILE *f = get_code_file();

    if (template_flag == 0)
 return;

    gen_extern_stubs(f, s->gen_name);
}

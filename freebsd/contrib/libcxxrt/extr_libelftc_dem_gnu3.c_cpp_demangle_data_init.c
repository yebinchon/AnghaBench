
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * container; } ;
struct cpp_demangle_data {int paren; int pfirst; int mem_rst; int mem_vat; int mem_cst; char const* cur; TYPE_1__ output; TYPE_1__ output_tmp; TYPE_1__ subst; TYPE_1__ tmpl; TYPE_1__ class_type; scalar_t__ push_head; int * last_sname; scalar_t__ func_type; int cmd; } ;


 int assert (int ) ;
 int vector_read_cmd_init (int *) ;
 int vector_str_dest (TYPE_1__*) ;
 int vector_str_init (TYPE_1__*) ;

__attribute__((used)) static int
cpp_demangle_data_init(struct cpp_demangle_data *d, const char *cur)
{

 if (d == ((void*)0) || cur == ((void*)0))
  return (0);

 if (!vector_str_init(&d->output))
  return (0);
 if (!vector_str_init(&d->output_tmp))
  goto clean1;
 if (!vector_str_init(&d->subst))
  goto clean2;
 if (!vector_str_init(&d->tmpl))
  goto clean3;
 if (!vector_str_init(&d->class_type))
  goto clean4;
 if (!vector_read_cmd_init(&d->cmd))
  goto clean5;

 assert(d->output.container != ((void*)0));
 assert(d->output_tmp.container != ((void*)0));
 assert(d->subst.container != ((void*)0));
 assert(d->tmpl.container != ((void*)0));
 assert(d->class_type.container != ((void*)0));

 d->paren = 0;
 d->pfirst = 0;
 d->mem_rst = 0;
 d->mem_vat = 0;
 d->mem_cst = 0;
 d->func_type = 0;
 d->cur = cur;
 d->last_sname = ((void*)0);
 d->push_head = 0;

 return (1);

clean5:
 vector_str_dest(&d->class_type);
clean4:
 vector_str_dest(&d->tmpl);
clean3:
 vector_str_dest(&d->subst);
clean2:
 vector_str_dest(&d->output_tmp);
clean1:
 vector_str_dest(&d->output);

 return (0);
}

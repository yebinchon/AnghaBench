
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int bitlen; int def_dump_fn; } ;
typedef TYPE_1__ ib_field_t ;


 int ALIGN (int ,int) ;
 int _mad_dump (int ,char const*,void*,int) ;

__attribute__((used)) static int _mad_print_field(const ib_field_t * f, const char *name, void *val,
       int valsz)
{
 return _mad_dump(f->def_dump_fn, name ? name : f->name, val,
    valsz ? valsz : ALIGN(f->bitlen, 8) / 8);
}

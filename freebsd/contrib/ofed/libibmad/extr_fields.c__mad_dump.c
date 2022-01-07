
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ib_mad_dump_fn ;
struct TYPE_3__ {int bitlen; int * def_dump_fn; } ;
typedef TYPE_1__ ib_field_t ;


 char* _mad_dump_field (TYPE_1__*,char const*,char*,int,void*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int _mad_dump(ib_mad_dump_fn * fn, const char *name, void *val,
       int valsz)
{
 ib_field_t f;
 char buf[512];

 f.def_dump_fn = fn;
 f.bitlen = valsz * 8;

 return printf("%s\n", _mad_dump_field(&f, name, buf, sizeof buf, val));
}

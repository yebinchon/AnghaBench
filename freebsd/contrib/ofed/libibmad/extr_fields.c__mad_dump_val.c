
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitlen; int (* def_dump_fn ) (char*,int,void*,int) ;} ;
typedef TYPE_1__ ib_field_t ;


 int ALIGN (int ,int) ;
 int stub1 (char*,int,void*,int) ;

__attribute__((used)) static char *_mad_dump_val(const ib_field_t * f, char *buf, int bufsz,
      void *val)
{
 f->def_dump_fn(buf, bufsz, val, ALIGN(f->bitlen, 8) / 8);
 buf[bufsz - 1] = 0;

 return buf;
}

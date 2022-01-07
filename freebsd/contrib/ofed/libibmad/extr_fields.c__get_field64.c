
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int bitoffs; } ;
typedef TYPE_1__ ib_field_t ;


 int memcpy (void*,void*,int) ;
 int ntohll (int ) ;

__attribute__((used)) static uint64_t _get_field64(void *buf, int base_offs, const ib_field_t * f)
{
 uint64_t val;
 memcpy((void *)&val, (void *)((char *)buf + base_offs + f->bitoffs / 8),
  sizeof(uint64_t));
 return ntohll(val);
}

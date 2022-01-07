
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* u; } ;
typedef TYPE_1__ warc_uuid_t ;


 int archive_random (int*,int) ;

__attribute__((used)) static int
_gen_uuid(warc_uuid_t *tgt)
{
 archive_random(tgt->u, sizeof(tgt->u));

 tgt->u[1U] &= 0xffff0fffU;
 tgt->u[1U] |= 0x4000U;
 tgt->u[2U] &= 0x3fffffffU;
 tgt->u[2U] |= 0x80000000U;
 return 0;
}

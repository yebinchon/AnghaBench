
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cyclic_pos; scalar_t__ cyclic_size; scalar_t__ read_pos; scalar_t__ write_pos; scalar_t__ offset; } ;
typedef TYPE_1__ lzma_mf ;


 scalar_t__ UINT32_MAX ;
 int assert (int) ;
 int normalize (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
move_pos(lzma_mf *mf)
{
 if (++mf->cyclic_pos == mf->cyclic_size)
  mf->cyclic_pos = 0;

 ++mf->read_pos;
 assert(mf->read_pos <= mf->write_pos);

 if (unlikely(mf->read_pos + mf->offset == UINT32_MAX))
  normalize(mf);
}

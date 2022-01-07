
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int size; int write_pos; int hash_count; int sons_count; int action; int (* skip ) (TYPE_1__*,int) ;int * buffer; scalar_t__ cyclic_pos; int * hash; int * son; scalar_t__ pending; scalar_t__ read_limit; scalar_t__ read_ahead; scalar_t__ read_pos; int cyclic_size; int offset; } ;
typedef TYPE_1__ lzma_mf ;
struct TYPE_7__ {scalar_t__ preset_dict_size; int * preset_dict; } ;
typedef TYPE_2__ lzma_lz_options ;
typedef int lzma_allocator ;


 int LZMA_MEMCMPLEN_EXTRA ;
 int LZMA_RUN ;
 int LZMA_SYNC_FLUSH ;
 int SIZE_MAX ;
 void* lzma_alloc (int,int const*) ;
 int * lzma_alloc_zero (int,int const*) ;
 int lzma_free (int *,int const*) ;
 int memcpy (int *,int *,int) ;
 int memzero (int *,int) ;
 int my_min (scalar_t__,int) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static bool
lz_encoder_init(lzma_mf *mf, const lzma_allocator *allocator,
  const lzma_lz_options *lz_options)
{

 if (mf->buffer == ((void*)0)) {



  mf->buffer = lzma_alloc(mf->size + LZMA_MEMCMPLEN_EXTRA,
    allocator);
  if (mf->buffer == ((void*)0))
   return 1;




  memzero(mf->buffer + mf->size, LZMA_MEMCMPLEN_EXTRA);
 }





 mf->offset = mf->cyclic_size;
 mf->read_pos = 0;
 mf->read_ahead = 0;
 mf->read_limit = 0;
 mf->write_pos = 0;
 mf->pending = 0;




 if (mf->hash_count > SIZE_MAX / sizeof(uint32_t)
   || mf->sons_count > SIZE_MAX / sizeof(uint32_t))
  return 1;
 if (mf->hash == ((void*)0)) {
  mf->hash = lzma_alloc_zero(mf->hash_count * sizeof(uint32_t),
    allocator);
  mf->son = lzma_alloc(mf->sons_count * sizeof(uint32_t),
    allocator);

  if (mf->hash == ((void*)0) || mf->son == ((void*)0)) {
   lzma_free(mf->hash, allocator);
   mf->hash = ((void*)0);

   lzma_free(mf->son, allocator);
   mf->son = ((void*)0);

   return 1;
  }
 } else {




  memzero(mf->hash, mf->hash_count * sizeof(uint32_t));
 }

 mf->cyclic_pos = 0;


 if (lz_options->preset_dict != ((void*)0)
   && lz_options->preset_dict_size > 0) {


  mf->write_pos = my_min(lz_options->preset_dict_size, mf->size);
  memcpy(mf->buffer, lz_options->preset_dict
    + lz_options->preset_dict_size - mf->write_pos,
    mf->write_pos);
  mf->action = LZMA_SYNC_FLUSH;
  mf->skip(mf, mf->write_pos);
 }

 mf->action = LZMA_RUN;

 return 0;
}

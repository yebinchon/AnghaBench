
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int lzma_allocator ;
struct TYPE_17__ {int * leftmost; } ;
struct TYPE_13__ {int uncompressed_base; int compressed_base; } ;
struct TYPE_14__ {int record_count; TYPE_7__ groups; int stream_padding; int stream_flags; int index_list_size; int block_number_base; int number; TYPE_1__ node; } ;
typedef TYPE_2__ index_stream ;
typedef int index_record ;
struct TYPE_16__ {scalar_t__ compressed_base; scalar_t__ uncompressed_base; } ;
struct TYPE_15__ {int number_base; int allocated; int last; TYPE_6__ node; scalar_t__ records; } ;
typedef TYPE_3__ index_group ;


 int PREALLOC_MAX ;
 int assert (int) ;
 int index_stream_end (TYPE_2__*,int const*) ;
 TYPE_2__* index_stream_init (int ,int ,int ,int ,int const*) ;
 int index_tree_append (TYPE_7__*,TYPE_6__*) ;
 TYPE_3__* index_tree_next (TYPE_6__*) ;
 TYPE_3__* lzma_alloc (int,int const*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static index_stream *
index_dup_stream(const index_stream *src, const lzma_allocator *allocator)
{

 if (src->record_count > PREALLOC_MAX)
  return ((void*)0);


 index_stream *dest = index_stream_init(src->node.compressed_base,
   src->node.uncompressed_base, src->number,
   src->block_number_base, allocator);
 if (dest == ((void*)0))
  return ((void*)0);


 dest->record_count = src->record_count;
 dest->index_list_size = src->index_list_size;
 dest->stream_flags = src->stream_flags;
 dest->stream_padding = src->stream_padding;


 if (src->groups.leftmost == ((void*)0))
  return dest;




 index_group *destg = lzma_alloc(sizeof(index_group)
   + src->record_count * sizeof(index_record),
   allocator);
 if (destg == ((void*)0)) {
  index_stream_end(dest, allocator);
  return ((void*)0);
 }


 destg->node.uncompressed_base = 0;
 destg->node.compressed_base = 0;
 destg->number_base = 1;
 destg->allocated = src->record_count;
 destg->last = src->record_count - 1;


 const index_group *srcg = (const index_group *)(src->groups.leftmost);
 size_t i = 0;
 do {
  memcpy(destg->records + i, srcg->records,
    (srcg->last + 1) * sizeof(index_record));
  i += srcg->last + 1;
  srcg = index_tree_next(&srcg->node);
 } while (srcg != ((void*)0));

 assert(i == destg->allocated);


 index_tree_append(&dest->groups, &destg->node);

 return dest;
}

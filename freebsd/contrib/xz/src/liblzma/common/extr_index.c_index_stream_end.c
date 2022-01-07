
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_allocator ;
struct TYPE_4__ {int groups; } ;
typedef TYPE_1__ index_stream ;


 int index_tree_end (int *,int const*,int (*) (TYPE_1__*,int const*)) ;
 int lzma_free (TYPE_1__*,int const*) ;

__attribute__((used)) static void
index_stream_end(void *node, const lzma_allocator *allocator)
{
 index_stream *s = node;
 index_tree_end(&s->groups, allocator, &lzma_free);
 lzma_free(s, allocator);
 return;
}

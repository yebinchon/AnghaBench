
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* simple; int next; } ;
typedef TYPE_1__ lzma_simple_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_1__*,int const*) ;
 int lzma_next_end (int *,int const*) ;

__attribute__((used)) static void
simple_coder_end(void *coder_ptr, const lzma_allocator *allocator)
{
 lzma_simple_coder *coder = coder_ptr;
 lzma_next_end(&coder->next, allocator);
 lzma_free(coder->simple, allocator);
 lzma_free(coder, allocator);
 return;
}

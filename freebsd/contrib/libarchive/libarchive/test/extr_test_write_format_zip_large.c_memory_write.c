
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileblocks {size_t filesize; struct fileblock* last; struct fileblock* first; } ;
struct fileblock {int size; struct fileblock* next; scalar_t__ buff; int gap_size; } ;
struct archive {int dummy; } ;
typedef long ssize_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ malloc (size_t) ;
 int memcpy (scalar_t__,void const*,size_t) ;
 int memset (struct fileblock*,int ,int) ;
 scalar_t__ nulldata ;
 int nullsize ;

__attribute__((used)) static ssize_t
memory_write(struct archive *a, void *_private, const void *buff, size_t size)
{
 struct fileblocks *private = _private;
 struct fileblock *block;

 (void)a;

 if ((const char *)nulldata <= (const char *)buff
     && (const char *)buff < (const char *)nulldata + nullsize) {

  private->last->gap_size += (int64_t)size;
 } else {


  block = (struct fileblock *)malloc(sizeof(*block));
  memset(block, 0, sizeof(*block));
  block->size = (int)size;
  block->buff = malloc(size);
  memcpy(block->buff, buff, size);
  if (private->last == ((void*)0)) {
   private->first = private->last = block;
  } else {
   private->last->next = block;
   private->last = block;
  }
  block->next = ((void*)0);
 }
 private->filesize += size;
 return ((long)size);
}

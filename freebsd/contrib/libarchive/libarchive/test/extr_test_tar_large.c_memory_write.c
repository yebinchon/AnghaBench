
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memdata {struct memblock* last; struct memblock* first; } ;
struct memblock {size_t size; struct memblock* next; scalar_t__ buff; int filebytes; } ;
struct archive {int dummy; } ;
typedef long ssize_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ filedata ;
 int filedatasize ;
 scalar_t__ malloc (size_t) ;
 int memcpy (scalar_t__,void const*,size_t) ;
 int memset (struct memblock*,int ,int) ;

__attribute__((used)) static ssize_t
memory_write(struct archive *a, void *_private, const void *buff, size_t size)
{
 struct memdata *private = _private;
 struct memblock *block;

 (void)a;
 if ((const char *)filedata <= (const char *)buff
     && (const char *)buff < (const char *)filedata + filedatasize) {

  private->last->filebytes += (int64_t)size;
 } else {


  block = (struct memblock *)malloc(sizeof(*block));
  memset(block, 0, sizeof(*block));
  block->size = size;
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
 return ((long)size);
}

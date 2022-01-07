
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fileblocks {void* buff; scalar_t__ gap_remaining; int fileposition; TYPE_1__* current; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {void* buff; scalar_t__ gap_size; int size; struct TYPE_2__* next; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 void* nulldata ;
 int nullsize ;
 int stderr ;

__attribute__((used)) static ssize_t
memory_read(struct archive *a, void *_private, const void **buff)
{
 struct fileblocks *private = _private;
 ssize_t size;

 (void)a;

 while (private->current != ((void*)0) && private->buff == ((void*)0) && private->gap_remaining == 0) {
  private->current = private->current->next;
  if (private->current != ((void*)0)) {
   private->buff = private->current->buff;
   private->gap_remaining = private->current->gap_size;
  }
 }

 if (private->current == ((void*)0))
  return (0);


 if (private->buff != ((void*)0)) {
  *buff = private->buff;
  size = ((char *)private->current->buff + private->current->size)
      - (char *)private->buff;
  private->buff = ((void*)0);
  private->fileposition += size;
  return (size);
 }


 if (private->gap_remaining > (int64_t)nullsize) {
  private->gap_remaining -= nullsize;
  *buff = nulldata;
  private->fileposition += nullsize;
  return (nullsize);
 }


 if (private->gap_remaining > 0) {
  size = (ssize_t)private->gap_remaining;
  *buff = nulldata;
  private->gap_remaining = 0;
  private->fileposition += size;

  private->current = private->current->next;
  if (private->current != ((void*)0)) {
   private->buff = private->current->buff;
   private->gap_remaining = private->current->gap_size;
  }

  return (size);
 }
 fprintf(stderr, "\n\n\nInternal failure\n\n\n");
 exit(1);
}

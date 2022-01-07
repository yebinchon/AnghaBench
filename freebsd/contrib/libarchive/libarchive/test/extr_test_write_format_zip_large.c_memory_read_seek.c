
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fileblocks {scalar_t__ filesize; scalar_t__ fileposition; char* buff; scalar_t__ gap_remaining; TYPE_1__* current; TYPE_1__* first; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ gap_size; struct TYPE_2__* next; scalar_t__ buff; } ;


 int SEEK_CUR ;
 int SEEK_END ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int64_t
memory_read_seek(struct archive *a, void *_private, int64_t offset, int whence)
{
 struct fileblocks *private = _private;

 (void)a;
 if (whence == SEEK_END) {
  offset = private->filesize + offset;
 } else if (whence == SEEK_CUR) {
  offset = private->fileposition + offset;
 }

 if (offset < 0) {
  fprintf(stderr, "\n\n\nInternal failure: negative seek\n\n\n");
  exit(1);
 }


 private->fileposition = offset;


 offset = 0;
 private->current = private->first;
 while (private->current != ((void*)0)) {
  if (offset + private->current->size > private->fileposition) {

   private->buff = (char *)private->current->buff
       + private->fileposition - offset;
   private->gap_remaining = private->current->gap_size;
   return private->fileposition;
  }
  offset += private->current->size;
  if (offset + private->current->gap_size > private->fileposition) {

   private->buff = ((void*)0);
   private->gap_remaining = private->current->gap_size
       - (private->fileposition - offset);
   return private->fileposition;
  }
  offset += private->current->gap_size;

  private->current = private->current->next;
 }
 if (private->fileposition == private->filesize) {
  return private->fileposition;
 }
 fprintf(stderr, "\n\n\nInternal failure: over-sized seek\n\n\n");
 exit(1);
}

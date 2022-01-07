
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fileblocks {TYPE_1__* current; int gap_remaining; int buff; scalar_t__ fileposition; TYPE_1__* first; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int gap_size; int buff; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
memory_read_open(struct archive *a, void *_private)
{
 struct fileblocks *private = _private;

 (void)a;

 private->current = private->first;
 private->fileposition = 0;
 if (private->current != ((void*)0)) {
  private->buff = private->current->buff;
  private->gap_remaining = private->current->gap_size;
 }
 return (ARCHIVE_OK);
}

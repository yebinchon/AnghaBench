
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileblocks {struct fileblocks* buff; struct fileblocks* next; struct fileblocks* first; } ;
struct fileblock {struct fileblock* buff; struct fileblock* next; struct fileblock* first; } ;


 int free (struct fileblocks*) ;

__attribute__((used)) static void
fileblocks_free(struct fileblocks *fileblocks)
{
 while (fileblocks->first != ((void*)0)) {
  struct fileblock *b = fileblocks->first;
  fileblocks->first = fileblocks->first->next;
  free(b->buff);
  free(b);
 }
 free(fileblocks);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparse_block {int is_hole; struct sparse_block* next; void* remaining; void* offset; } ;
struct pax {struct sparse_block* sparse_tail; struct sparse_block* sparse_list; } ;
typedef void* int64_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static int
_sparse_list_add_block(struct pax *pax, int64_t offset, int64_t length,
    int is_hole)
{
 struct sparse_block *sb;

 sb = (struct sparse_block *)malloc(sizeof(*sb));
 if (sb == ((void*)0))
  return (ARCHIVE_FATAL);
 sb->next = ((void*)0);
 sb->is_hole = is_hole;
 sb->offset = offset;
 sb->remaining = length;
 if (pax->sparse_list == ((void*)0) || pax->sparse_tail == ((void*)0))
  pax->sparse_list = pax->sparse_tail = sb;
 else {
  pax->sparse_tail->next = sb;
  pax->sparse_tail = sb;
 }
 return (ARCHIVE_OK);
}

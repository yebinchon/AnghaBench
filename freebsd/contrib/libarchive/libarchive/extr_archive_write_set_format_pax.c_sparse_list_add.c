
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pax {TYPE_1__* sparse_tail; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ remaining; } ;


 int ARCHIVE_OK ;
 int _sparse_list_add_block (struct pax*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int
sparse_list_add(struct pax *pax, int64_t offset, int64_t length)
{
 int64_t last_offset;
 int r;

 if (pax->sparse_tail == ((void*)0))
  last_offset = 0;
 else {
  last_offset = pax->sparse_tail->offset +
      pax->sparse_tail->remaining;
 }
 if (last_offset < offset) {

  r = _sparse_list_add_block(pax, last_offset,
      offset - last_offset, 1);
  if (r != ARCHIVE_OK)
   return (r);
 }

 return (_sparse_list_add_block(pax, offset, length, 0));
}

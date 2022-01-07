
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct extr_rec* current; struct extr_rec** last; struct extr_rec* first; } ;
struct isoent {TYPE_1__ extr_rec_list; struct isoent* parent; } ;
struct extr_rec {int offset; int location; unsigned char* buf; struct extr_rec* next; } ;


 scalar_t__ DR_SAFETY ;
 scalar_t__ LOGICAL_BLOCK_SIZE ;
 struct extr_rec* extra_last_record (struct isoent*) ;
 struct extr_rec* malloc (int) ;

__attribute__((used)) static unsigned char *
extra_get_record(struct isoent *isoent, int *space, int *off, int *loc)
{
 struct extr_rec *rec;

 isoent = isoent->parent;
 if (off != ((void*)0)) {

  rec = isoent->extr_rec_list.current;
  if (DR_SAFETY > LOGICAL_BLOCK_SIZE - rec->offset)
   rec = rec->next;
 } else {

  rec = extra_last_record(isoent);
  if (rec == ((void*)0) ||
      DR_SAFETY > LOGICAL_BLOCK_SIZE - rec->offset) {
   rec = malloc(sizeof(*rec));
   if (rec == ((void*)0))
    return (((void*)0));
   rec->location = 0;
   rec->offset = 0;

   rec->next = ((void*)0);







   if (isoent->extr_rec_list.last == ((void*)0))
    isoent->extr_rec_list.last =
     &(isoent->extr_rec_list.first);
   *isoent->extr_rec_list.last = rec;
   isoent->extr_rec_list.last = &(rec->next);
  }
 }
 *space = LOGICAL_BLOCK_SIZE - rec->offset - DR_SAFETY;
 if (*space & 0x01)
  *space -= 1;
 if (off != ((void*)0))
  *off = rec->offset;
 if (loc != ((void*)0))
  *loc = rec->location;
 isoent->extr_rec_list.current = rec;

 return (&rec->buf[rec->offset]);
}

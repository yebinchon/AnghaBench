
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper {scalar_t__ cm_refcount; int cm_key; } ;


 scalar_t__ REFCOUNT_PERSISTENT ;
 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int _CITRUS_HASH_REMOVE (struct _citrus_mapper*,int ) ;
 int cm_entry ;
 int cm_lock ;
 int free (int ) ;
 int mapper_close (struct _citrus_mapper*) ;

void
_citrus_mapper_close(struct _citrus_mapper *cm)
{

 if (cm) {
  WLOCK(&cm_lock);
  if (cm->cm_refcount == REFCOUNT_PERSISTENT)
   goto quit;
  if (cm->cm_refcount > 0) {
   if (--cm->cm_refcount > 0)
    goto quit;
   _CITRUS_HASH_REMOVE(cm, cm_entry);
   free(cm->cm_key);
  }
  UNLOCK(&cm_lock);
  mapper_close(cm);
  return;
quit:
  UNLOCK(&cm_lock);
 }
}

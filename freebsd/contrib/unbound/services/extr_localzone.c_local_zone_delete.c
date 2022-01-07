
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zone {struct local_zone* taglist; struct local_zone* name; int region; int lock; } ;


 int free (struct local_zone*) ;
 int lock_rw_destroy (int *) ;
 int regional_destroy (int ) ;

void
local_zone_delete(struct local_zone* z)
{
 if(!z)
  return;
 lock_rw_destroy(&z->lock);
 regional_destroy(z->region);
 free(z->name);
 free(z->taglist);
 free(z);
}

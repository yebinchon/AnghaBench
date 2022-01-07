
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zone {struct auth_zone* zonefile; struct auth_zone* name; int data; int lock; } ;


 int auth_data_del ;
 int free (struct auth_zone*) ;
 int lock_rw_destroy (int *) ;
 int traverse_postorder (int *,int ,int *) ;

__attribute__((used)) static void
auth_zone_delete(struct auth_zone* z)
{
 if(!z) return;
 lock_rw_destroy(&z->lock);
 traverse_postorder(&z->data, auth_data_del, ((void*)0));
 free(z->name);
 free(z->zonefile);
 free(z);
}

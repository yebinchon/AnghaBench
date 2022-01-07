
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct p2p_group {int beacon_update; TYPE_1__* noa; } ;
struct TYPE_5__ {scalar_t__ used; } ;


 int p2p_group_update_ies (struct p2p_group*) ;
 TYPE_1__* wpabuf_alloc_copy (int const*,size_t) ;
 int wpabuf_free (TYPE_1__*) ;
 int wpabuf_put_data (TYPE_1__*,int const*,size_t) ;
 size_t wpabuf_size (TYPE_1__*) ;

int p2p_group_notif_noa(struct p2p_group *group, const u8 *noa,
   size_t noa_len)
{
 if (noa == ((void*)0)) {
  wpabuf_free(group->noa);
  group->noa = ((void*)0);
 } else {
  if (group->noa) {
   if (wpabuf_size(group->noa) >= noa_len) {
    group->noa->used = 0;
    wpabuf_put_data(group->noa, noa, noa_len);
   } else {
    wpabuf_free(group->noa);
    group->noa = ((void*)0);
   }
  }

  if (!group->noa) {
   group->noa = wpabuf_alloc_copy(noa, noa_len);
   if (group->noa == ((void*)0))
    return -1;
  }
 }

 group->beacon_update = 1;
 p2p_group_update_ies(group);
 return 0;
}

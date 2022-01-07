
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 struct wpabuf* dh_derive_shared (struct wpabuf const*,struct wpabuf const*,int ) ;
 int dh_groups_get (int) ;

struct wpabuf * dh5_derive_shared(void *ctx, const struct wpabuf *peer_public,
      const struct wpabuf *own_private)
{
 return dh_derive_shared(peer_public, own_private, dh_groups_get(5));
}

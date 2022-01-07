
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {size_t identity_len; int const* identity; } ;



const u8 * eap_get_identity(struct eap_sm *sm, size_t *len)
{
 *len = sm->identity_len;
 return sm->identity;
}

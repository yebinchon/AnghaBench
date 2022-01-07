
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_vendor_test_data {scalar_t__ state; } ;
struct eap_sm {int dummy; } ;


 scalar_t__ SUCCESS ;
 int * os_malloc (int const) ;
 int os_memset (int *,int,int const) ;

__attribute__((used)) static u8 * eap_vendor_test_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_vendor_test_data *data = priv;
 u8 *key;
 const int key_len = 64;

 if (data->state != SUCCESS)
  return ((void*)0);

 key = os_malloc(key_len);
 if (key == ((void*)0))
  return ((void*)0);

 os_memset(key, 0x11, key_len / 2);
 os_memset(key + key_len / 2, 0x22, key_len / 2);
 *len = key_len;

 return key;
}

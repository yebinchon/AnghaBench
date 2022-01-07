
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_peap_data {size_t phase2_key_len; int * phase2_key; } ;


 int os_memcpy (int *,int *,size_t) ;
 int os_memset (int *,int ,size_t) ;

__attribute__((used)) static void eap_peap_get_isk(struct eap_peap_data *data,
        u8 *isk, size_t isk_len)
{
 size_t key_len;

 os_memset(isk, 0, isk_len);
 if (data->phase2_key == ((void*)0))
  return;

 key_len = data->phase2_key_len;
 if (key_len > isk_len)
  key_len = isk_len;
 os_memcpy(isk, data->phase2_key, key_len);
}

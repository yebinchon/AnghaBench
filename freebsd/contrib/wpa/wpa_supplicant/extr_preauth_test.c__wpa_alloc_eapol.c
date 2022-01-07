
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int * wpa_alloc_eapol (void*,int ,void const*,int ,size_t*,void**) ;

__attribute__((used)) static u8 * _wpa_alloc_eapol(void *wpa_s, u8 type,
        const void *data, u16 data_len,
        size_t *msg_len, void **data_pos)
{
 return wpa_alloc_eapol(wpa_s, type, data, data_len, msg_len, data_pos);
}

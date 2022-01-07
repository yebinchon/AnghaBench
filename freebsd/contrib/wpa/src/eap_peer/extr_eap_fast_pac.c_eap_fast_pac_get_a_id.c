
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
struct eap_fast_pac {int pac_info_len; unsigned int a_id_len; unsigned int a_id_info_len; int * a_id_info; int * a_id; int * pac_info; } ;


 unsigned int PAC_TYPE_A_ID ;
 unsigned int PAC_TYPE_A_ID_INFO ;
 unsigned int WPA_GET_BE16 (int *) ;
 int os_free (int *) ;
 void* os_memdup (int *,unsigned int) ;

__attribute__((used)) static void eap_fast_pac_get_a_id(struct eap_fast_pac *pac)
{
 u8 *pos, *end;
 u16 type, len;

 pos = pac->pac_info;
 end = pos + pac->pac_info_len;

 while (end - pos > 4) {
  type = WPA_GET_BE16(pos);
  pos += 2;
  len = WPA_GET_BE16(pos);
  pos += 2;
  if (len > (unsigned int) (end - pos))
   break;

  if (type == PAC_TYPE_A_ID) {
   os_free(pac->a_id);
   pac->a_id = os_memdup(pos, len);
   if (pac->a_id == ((void*)0))
    break;
   pac->a_id_len = len;
  }

  if (type == PAC_TYPE_A_ID_INFO) {
   os_free(pac->a_id_info);
   pac->a_id_info = os_memdup(pos, len);
   if (pac->a_id_info == ((void*)0))
    break;
   pac->a_id_info_len = len;
  }

  pos += len;
 }
}

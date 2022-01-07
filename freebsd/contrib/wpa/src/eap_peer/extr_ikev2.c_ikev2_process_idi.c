
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_responder_data {size_t IDi_len; int IDi_type; int * IDi; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int os_free (int *) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ikev2_process_idi(struct ikev2_responder_data *data,
        const u8 *idi, size_t idi_len)
{
 u8 id_type;

 if (idi == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No IDi received");
  return -1;
 }

 if (idi_len < 4) {
  wpa_printf(MSG_INFO, "IKEV2: Too short IDi payload");
  return -1;
 }

 id_type = idi[0];
 idi += 4;
 idi_len -= 4;

 wpa_printf(MSG_DEBUG, "IKEV2: IDi ID Type %d", id_type);
 wpa_hexdump_ascii(MSG_DEBUG, "IKEV2: IDi", idi, idi_len);
 os_free(data->IDi);
 data->IDi = os_memdup(idi, idi_len);
 if (data->IDi == ((void*)0))
  return -1;
 data->IDi_len = idi_len;
 data->IDi_type = id_type;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int P2P_SD_BAD_REQUEST ;
 int wpas_sd_add_empty (struct wpabuf*,int ,int ,int ) ;

__attribute__((used)) static void wpas_sd_add_bad_request(struct wpabuf *resp, u8 srv_proto,
        u8 srv_trans_id)
{
 wpas_sd_add_empty(resp, srv_proto, srv_trans_id, P2P_SD_BAD_REQUEST);
}

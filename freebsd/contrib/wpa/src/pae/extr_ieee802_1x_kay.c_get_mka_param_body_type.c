
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_1x_mka_hdr {int type; } ;



__attribute__((used)) static u8 get_mka_param_body_type(const void *body)
{
 const struct ieee802_1x_mka_hdr *hdr = body;
 return hdr->type;
}

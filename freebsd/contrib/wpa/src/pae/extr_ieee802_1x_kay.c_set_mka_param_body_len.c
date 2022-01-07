
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_hdr {unsigned int length; unsigned int length1; } ;



__attribute__((used)) static void set_mka_param_body_len(void *body, unsigned int len)
{
 struct ieee802_1x_mka_hdr *hdr = body;
 hdr->length = (len >> 8) & 0x0f;
 hdr->length1 = len & 0xff;
}

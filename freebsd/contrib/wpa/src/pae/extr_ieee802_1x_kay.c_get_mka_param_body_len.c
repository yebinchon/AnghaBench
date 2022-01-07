
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_hdr {int length; int length1; } ;



__attribute__((used)) static unsigned int get_mka_param_body_len(const void *body)
{
 const struct ieee802_1x_mka_hdr *hdr = body;
 return (hdr->length << 8) | hdr->length1;
}

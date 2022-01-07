
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {int cipher_offset; } ;
typedef enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;



void ieee802_1x_cp_set_offset(void *cp_ctx, enum confidentiality_offset offset)
{
 struct ieee802_1x_cp_sm *sm = cp_ctx;
 sm->cipher_offset = offset;
}

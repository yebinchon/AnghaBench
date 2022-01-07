
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {scalar_t__ confidentiality_offset; scalar_t__ cipher_offset; scalar_t__ current_cipher_suite; scalar_t__ cipher_suite; } ;



__attribute__((used)) static int changed_cipher(struct ieee802_1x_cp_sm *sm)
{
 return sm->confidentiality_offset != sm->cipher_offset ||
  sm->current_cipher_suite != sm->cipher_suite;
}

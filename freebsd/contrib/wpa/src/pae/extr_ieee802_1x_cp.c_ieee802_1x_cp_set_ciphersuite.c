
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee802_1x_cp_sm {int cipher_suite; } ;



void ieee802_1x_cp_set_ciphersuite(void *cp_ctx, u64 cs)
{
 struct ieee802_1x_cp_sm *sm = cp_ctx;
 sm->cipher_suite = cs;
}

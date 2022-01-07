
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int blake2b_state ;
struct TYPE_5__ {scalar_t__ digest_length; int fanout; int depth; int personal; int salt; int reserved; scalar_t__ inner_length; scalar_t__ node_depth; int node_offset; int leaf_length; scalar_t__ key_length; } ;
typedef TYPE_1__ blake2b_param ;


 scalar_t__ const BLAKE2B_OUTBYTES ;
 int STORE32_LE (int ,int ) ;
 int STORE64_LE (int ,int ) ;
 int blake2b_init_param (int *,TYPE_1__*) ;
 int blake2b_param_set_personal (TYPE_1__*,scalar_t__ const*) ;
 int blake2b_param_set_salt (TYPE_1__*,scalar_t__ const*) ;
 int memset (int ,int ,int) ;
 int sodium_misuse () ;

int
blake2b_init_salt_personal(blake2b_state *S, const uint8_t outlen,
                           const void *salt, const void *personal)
{
    blake2b_param P[1];

    if ((!outlen) || (outlen > BLAKE2B_OUTBYTES)) {
        sodium_misuse();
    }
    P->digest_length = outlen;
    P->key_length = 0;
    P->fanout = 1;
    P->depth = 1;
    STORE32_LE(P->leaf_length, 0);
    STORE64_LE(P->node_offset, 0);
    P->node_depth = 0;
    P->inner_length = 0;
    memset(P->reserved, 0, sizeof(P->reserved));
    if (salt != ((void*)0)) {
        blake2b_param_set_salt(P, (const uint8_t *) salt);
    } else {
        memset(P->salt, 0, sizeof(P->salt));
    }
    if (personal != ((void*)0)) {
        blake2b_param_set_personal(P, (const uint8_t *) personal);
    } else {
        memset(P->personal, 0, sizeof(P->personal));
    }
    return blake2b_init_param(S, P);
}

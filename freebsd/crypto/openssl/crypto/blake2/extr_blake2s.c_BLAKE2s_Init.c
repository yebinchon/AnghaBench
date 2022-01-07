
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fanout; int depth; int personal; int salt; scalar_t__ inner_length; scalar_t__ node_depth; int node_offset; int leaf_length; scalar_t__ key_length; int digest_length; } ;
typedef TYPE_1__ BLAKE2S_PARAM ;
typedef int BLAKE2S_CTX ;


 int BLAKE2S_DIGEST_LENGTH ;
 int blake2s_init_param (int *,TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int store32 (int ,int ) ;
 int store48 (int ,int ) ;

int BLAKE2s_Init(BLAKE2S_CTX *c)
{
    BLAKE2S_PARAM P[1];

    P->digest_length = BLAKE2S_DIGEST_LENGTH;
    P->key_length = 0;
    P->fanout = 1;
    P->depth = 1;
    store32(P->leaf_length, 0);
    store48(P->node_offset, 0);
    P->node_depth = 0;
    P->inner_length = 0;
    memset(P->salt, 0, sizeof(P->salt));
    memset(P->personal, 0, sizeof(P->personal));
    blake2s_init_param(c, P);
    return 1;
}

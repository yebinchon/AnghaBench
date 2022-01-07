
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint64_t ;
struct TYPE_6__ {int outlen; } ;
typedef TYPE_1__ blake2b_state ;
struct TYPE_7__ {int depth; int inner_length; int personal; int salt; int reserved; scalar_t__ node_depth; int node_offset; int leaf_length; int fanout; void* key_length; void* digest_length; } ;
typedef TYPE_2__ blake2b_param ;


 int BLAKE2B_OUTBYTES ;
 int PARALLELISM_DEGREE ;
 int blake2b_init_param (TYPE_1__*,TYPE_2__*) ;
 int memset (int ,int ,int) ;
 int store32 (int *,int ) ;
 int store64 (int *,int ) ;

__attribute__((used)) static int blake2bp_init_leaf( blake2b_state *S, uint8_t outlen, uint8_t keylen, uint64_t offset )
{
  blake2b_param P[1];
  P->digest_length = outlen;
  P->key_length = keylen;
  P->fanout = PARALLELISM_DEGREE;
  P->depth = 2;
  store32(&P->leaf_length, 0);
  store64(&P->node_offset, offset);
  P->node_depth = 0;
  P->inner_length = BLAKE2B_OUTBYTES;
  memset( P->reserved, 0, sizeof( P->reserved ) );
  memset( P->salt, 0, sizeof( P->salt ) );
  memset( P->personal, 0, sizeof( P->personal ) );
  blake2b_init_param( S, P );
  S->outlen = P->inner_length;
  return 0;
}

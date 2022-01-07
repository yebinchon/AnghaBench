
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef int blake2s_state ;
struct TYPE_3__ {int depth; int personal; int salt; int inner_length; scalar_t__ node_depth; int xof_length; int node_offset; int leaf_length; int fanout; void* key_length; void* digest_length; } ;
typedef TYPE_1__ blake2s_param ;


 int BLAKE2S_OUTBYTES ;
 int PARALLELISM_DEGREE ;
 int blake2sp_init_leaf_param (int *,TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int store16 (int *,int ) ;
 int store32 (int *,int ) ;

__attribute__((used)) static int blake2sp_init_leaf( blake2s_state *S, size_t outlen, size_t keylen, uint32_t offset )
{
  blake2s_param P[1];
  P->digest_length = (uint8_t)outlen;
  P->key_length = (uint8_t)keylen;
  P->fanout = PARALLELISM_DEGREE;
  P->depth = 2;
  store32( &P->leaf_length, 0 );
  store32( &P->node_offset, offset );
  store16( &P->xof_length, 0 );
  P->node_depth = 0;
  P->inner_length = BLAKE2S_OUTBYTES;
  memset( P->salt, 0, sizeof( P->salt ) );
  memset( P->personal, 0, sizeof( P->personal ) );
  return blake2sp_init_leaf_param( S, P );
}

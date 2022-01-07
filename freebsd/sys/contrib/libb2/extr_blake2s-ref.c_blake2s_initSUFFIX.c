
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int blake2s_state ;
struct TYPE_3__ {int fanout; int depth; int personal; int salt; scalar_t__ inner_length; scalar_t__ node_depth; int node_offset; int leaf_length; scalar_t__ key_length; scalar_t__ digest_length; } ;
typedef TYPE_1__ blake2s_param ;


 size_t BLAKE2S_OUTBYTES ;
 int blake2s_init_param (int *,TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int store32 (int *,int ) ;
 int store48 (int *,int ) ;

int blake2s_init( blake2s_state *S, size_t outlen )
{
  blake2s_param P[1];


  if ( ( !outlen ) || ( outlen > BLAKE2S_OUTBYTES ) ) return -1;

  P->digest_length = ( uint8_t) outlen;
  P->key_length = 0;
  P->fanout = 1;
  P->depth = 1;
  store32( &P->leaf_length, 0 );
  store48( &P->node_offset, 0 );
  P->node_depth = 0;
  P->inner_length = 0;

  memset( P->salt, 0, sizeof( P->salt ) );
  memset( P->personal, 0, sizeof( P->personal ) );
  return blake2s_init_param( S, P );
}

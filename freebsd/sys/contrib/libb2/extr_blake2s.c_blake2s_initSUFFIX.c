
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int blake2s_state ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_6__ {int member_0; } ;
struct TYPE_9__ {size_t member_0; int member_2; int member_3; TYPE_3__ member_9; TYPE_2__ member_8; int member_7; int member_6; TYPE_1__ member_5; int member_4; int member_1; } ;
typedef TYPE_4__ blake2s_param ;


 size_t BLAKE2S_OUTBYTES ;
 int blake2s_init_param (int *,TYPE_4__ const*) ;

int blake2s_init( blake2s_state *S, size_t outlen )
{
  if ( ( !outlen ) || ( outlen > BLAKE2S_OUTBYTES ) ) return -1;

  const blake2s_param P =
  {
    outlen,
    0,
    1,
    1,
    0,
    {0},
    0,
    0,
    {0},
    {0}
  };
  return blake2s_init_param( S, &P );
}

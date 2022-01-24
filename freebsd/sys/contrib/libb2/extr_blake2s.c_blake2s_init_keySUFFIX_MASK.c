#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  blake2s_state ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {size_t member_0; size_t member_1; int member_2; int member_3; TYPE_2__ member_9; TYPE_1__ member_8; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; TYPE_3__ member_5; int /*<<< orphan*/  member_4; } ;
typedef  TYPE_4__ blake2s_param ;

/* Variables and functions */
 int BLAKE2S_BLOCKBYTES ; 
 size_t BLAKE2S_KEYBYTES ; 
 size_t BLAKE2S_OUTBYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5( blake2s_state *S, size_t outlen, const void *key, size_t keylen )
{
  if ( ( !outlen ) || ( outlen > BLAKE2S_OUTBYTES ) ) return -1;

  if ( ( !key ) || ( !keylen ) || keylen > BLAKE2S_KEYBYTES ) return -1;

  const blake2s_param P =
  {
    outlen,
    keylen,
    1,
    1,
    0,
    {0},
    0,
    0,
    {0},
    0
  };

  if( FUNC0( S, &P ) < 0 )
    return -1;

  {
    uint8_t block[BLAKE2S_BLOCKBYTES];
    FUNC3( block, 0, BLAKE2S_BLOCKBYTES );
    FUNC2( block, key, keylen );
    FUNC1( S, block, BLAKE2S_BLOCKBYTES );
    FUNC4( block, BLAKE2S_BLOCKBYTES ); /* Burn the key from stack */
  }
  return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * h; } ;
typedef  TYPE_1__ blake2s_state ;

/* Variables and functions */
 int /*<<< orphan*/ * blake2s_IV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC1( blake2s_state *S )
{
  FUNC0( S, 0, sizeof( blake2s_state ) );

  for( int i = 0; i < 8; ++i ) S->h[i] = blake2s_IV[i];

  return 0;
}
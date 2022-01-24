#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  int u32 ;
struct TYPE_3__ {void** input; } ;
typedef  TYPE_1__ chacha_ctx ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 char* sigma ; 
 char* tau ; 

void
FUNC1(chacha_ctx *x,const u8 *k,u32 kbits)
{
  const char *constants;

  x->input[4] = FUNC0(k + 0);
  x->input[5] = FUNC0(k + 4);
  x->input[6] = FUNC0(k + 8);
  x->input[7] = FUNC0(k + 12);
  if (kbits == 256) { /* recommended */
    k += 16;
    constants = sigma;
  } else { /* kbits == 128 */
    constants = tau;
  }
  x->input[8] = FUNC0(k + 0);
  x->input[9] = FUNC0(k + 4);
  x->input[10] = FUNC0(k + 8);
  x->input[11] = FUNC0(k + 12);
  x->input[0] = FUNC0(constants + 0);
  x->input[1] = FUNC0(constants + 4);
  x->input[2] = FUNC0(constants + 8);
  x->input[3] = FUNC0(constants + 12);
}
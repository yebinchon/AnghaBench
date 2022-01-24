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
struct TYPE_3__ {int* v; } ;
typedef  TYPE_1__ fe25519 ;
typedef  int crypto_uint32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

void FUNC2(fe25519 *r) 
{
  int i;
  crypto_uint32 m = FUNC0(r->v[31],127);
  for(i=30;i>0;i--)
    m &= FUNC0(r->v[i],255);
  m &= FUNC1(r->v[0],237);

  m = -m;

  r->v[31] -= m&127;
  for(i=30;i>0;i--)
    r->v[i] -= m&255;
  r->v[0] -= m&237;
}
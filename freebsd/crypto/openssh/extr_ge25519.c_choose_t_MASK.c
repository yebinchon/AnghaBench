#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ ge25519_aff ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC1 (char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* ge25519_base_multiples_affine ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static void FUNC5(ge25519_aff *t, unsigned long long pos, signed char b)
{
  /* constant time */
  fe25519 v;
  *t = ge25519_base_multiples_affine[5*pos+0];
  FUNC0(t, &ge25519_base_multiples_affine[5*pos+1],FUNC1(b,1) | FUNC1(b,-1));
  FUNC0(t, &ge25519_base_multiples_affine[5*pos+2],FUNC1(b,2) | FUNC1(b,-2));
  FUNC0(t, &ge25519_base_multiples_affine[5*pos+3],FUNC1(b,3) | FUNC1(b,-3));
  FUNC0(t, &ge25519_base_multiples_affine[5*pos+4],FUNC1(b,-4));
  FUNC3(&v, &t->x);
  FUNC2(&t->x, &v, FUNC4(b));
}
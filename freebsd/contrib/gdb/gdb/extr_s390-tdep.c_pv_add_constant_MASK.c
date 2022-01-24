#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct prologue_value {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct prologue_value*,struct prologue_value*,struct prologue_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct prologue_value*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct prologue_value *v, CORE_ADDR k)
{
  struct prologue_value pv_k;

  /* Rather than thinking of all the cases we can and can't handle,
     we'll just let pv_add take care of that for us.  */
  FUNC1 (&pv_k, k);
  FUNC0 (v, v, &pv_k);
}
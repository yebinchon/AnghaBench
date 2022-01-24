#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t lnglen; } ;
struct TYPE_7__ {scalar_t__ tt; TYPE_1__ u; } ;
typedef  TYPE_2__ TString ;

/* Variables and functions */
 scalar_t__ LUA_TLNGSTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

int FUNC3 (TString *a, TString *b) {
  size_t len = a->u.lnglen;
  FUNC1(a->tt == LUA_TLNGSTR && b->tt == LUA_TLNGSTR);
  return (a == b) ||  /* same instance or... */
    ((len == b->u.lnglen) &&  /* equal length and ... */
     (FUNC2(FUNC0(a), FUNC0(b), len) == 0));  /* equal contents */
}
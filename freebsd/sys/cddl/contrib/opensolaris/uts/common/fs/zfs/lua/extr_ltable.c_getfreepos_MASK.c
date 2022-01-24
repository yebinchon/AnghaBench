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
struct TYPE_3__ {scalar_t__ lastfree; scalar_t__ node; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *FUNC2 (Table *t) {
  while (t->lastfree > t->node) {
    t->lastfree--;
    if (FUNC1(FUNC0(t->lastfree)))
      return t->lastfree;
  }
  return NULL;  /* could not find a free place */
}
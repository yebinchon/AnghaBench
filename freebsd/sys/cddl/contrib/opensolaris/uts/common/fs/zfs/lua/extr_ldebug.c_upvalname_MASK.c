#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sizeupvalues; TYPE_1__* upvalues; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC2 (Proto *p, int uv) {
  TString *s = FUNC0(uv < p->sizeupvalues, p->upvalues[uv].name);
  if (s == NULL) return "?";
  else return FUNC1(s);
}
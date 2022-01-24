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

/* Variables and functions */
 int /*<<< orphan*/  L_MODEEXT ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (const char *mode) {
  return (*mode != '\0' && FUNC0("rwa", *(mode++)) != NULL &&
         (*mode != '+' || (++mode, 1)) &&  /* skip if char is '+' */
         (FUNC2(mode, L_MODEEXT) == FUNC1(mode)));  /* check extensions */
}
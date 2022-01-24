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
struct partial_symbol {int /*<<< orphan*/  ginfo; } ;
struct objfile {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct partial_symbol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct objfile*) ; 

struct partial_symbol *
FUNC2 (struct partial_symbol *psym, struct objfile *objfile)
{
  if (!psym)
    return NULL;

  if (FUNC0 (psym))
    return psym;

  FUNC1 (&psym->ginfo, objfile);

  return psym;
}
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
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  enum noside { ____Placeholder_noside } noside ;

/* Variables and functions */
 char* FUNC0 (struct type const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 struct value* FUNC2 (struct type const*,char*,int) ; 

__attribute__((used)) static struct value *
FUNC3 (const struct type *curtype,
		     char *name,
		     enum noside noside)
{
  struct value *retval = FUNC2 (curtype, name,
						    noside);

  if (retval == NULL)
    FUNC1 ("No symbol \"%s\" in namespace \"%s\".", name,
	   FUNC0 (curtype));

  return retval;
}
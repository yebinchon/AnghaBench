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
struct ui_file {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct value*,struct ui_file*) ; 

int
FUNC6 (struct value *val, struct ui_file *stream, int format,
		  int deref_ref, int recurse, enum val_prettyprint pretty)
{
  if (!FUNC5 (val, stream))
    return 0;

  return FUNC4 (FUNC3(val), FUNC1 (val),
		    FUNC2 (val), FUNC0 (val),
		    stream, format, deref_ref, recurse, pretty);
}
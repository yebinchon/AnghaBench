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

/* Variables and functions */
 scalar_t__ FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*) ; 

__attribute__((used)) static int
FUNC2 (struct value *val, struct ui_file *stream)
{
  if (val == 0)
    {
      FUNC1 (stream, "<address of value unknown>");
      return 0;
    }

  if (FUNC0 (val))
    {
      FUNC1 (stream, "<value optimized out>");
      return 0;
    }

  return 1;
}
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
struct ui_file {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 struct ui_file* FUNC1 (int /*<<< orphan*/ *,int) ; 

struct ui_file *
FUNC2 (char *name, char *mode)
{
  FILE *f = FUNC0 (name, mode);
  if (f == NULL)
    return NULL;
  return FUNC1 (f, 1);
}
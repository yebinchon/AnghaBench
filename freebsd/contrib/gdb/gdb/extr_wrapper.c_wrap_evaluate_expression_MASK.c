#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* pointer; } ;
struct gdb_wrapper_arguments {TYPE_2__* args; TYPE_1__ result; } ;
struct expression {int dummy; } ;
struct TYPE_4__ {scalar_t__ pointer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct expression*) ; 

__attribute__((used)) static int
FUNC1 (char *a)
{
  struct gdb_wrapper_arguments *args = (struct gdb_wrapper_arguments *) a;

  (args)->result.pointer =
    (char *) FUNC0 ((struct expression *) args->args[0].pointer);
  return 1;
}
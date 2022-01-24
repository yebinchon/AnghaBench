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
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void (*) (int)) ; 

__attribute__((used)) static void
FUNC2 (int signo)
{
  /* This message is based on ANSI C, section 4.7.  Note that integer
     divide by zero causes this, so "float" is a misnomer.  */
  FUNC1 (SIGFPE, float_handler);
  FUNC0 ("Erroneous arithmetic operation.");
}
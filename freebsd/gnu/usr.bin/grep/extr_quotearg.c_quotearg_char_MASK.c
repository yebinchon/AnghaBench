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
struct quoting_options {int dummy; } ;

/* Variables and functions */
 struct quoting_options default_quoting_options ; 
 char* FUNC0 (int /*<<< orphan*/ ,char const*,struct quoting_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct quoting_options*,char,int) ; 

char *
FUNC2 (char const *arg, char ch)
{
  struct quoting_options options;
  options = default_quoting_options;
  FUNC1 (&options, ch, 1);
  return FUNC0 (0, arg, &options);
}
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
struct quoting_options {int style; int /*<<< orphan*/  quote_these_too; } ;
typedef  enum quoting_style { ____Placeholder_quoting_style } quoting_style ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (unsigned int,char const*,struct quoting_options*) ; 

char *
FUNC2 (unsigned int n, enum quoting_style s, char const *arg)
{
  struct quoting_options o;
  o.style = s;
  FUNC0 (o.quote_these_too, 0, sizeof o.quote_these_too);
  return FUNC1 (n, arg, &o);
}
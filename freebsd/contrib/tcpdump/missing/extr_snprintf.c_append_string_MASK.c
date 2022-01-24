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
struct state {scalar_t__ (* append_char ) (struct state*,char) ;} ;

/* Variables and functions */
 int minus_flag ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct state*,char) ; 
 scalar_t__ FUNC2 (struct state*,char) ; 
 scalar_t__ FUNC3 (struct state*,char) ; 
 scalar_t__ FUNC4 (struct state*,char) ; 

__attribute__((used)) static int
FUNC5 (struct state *state,
	       unsigned char *arg,
	       int width,
	       int prec,
	       int flags)
{
  if(prec != -1)
    width -= prec;
  else
    width -= FUNC0((char *)arg);
  if(!(flags & minus_flag))
    while(width-- > 0)
      if((*state->append_char) (state, ' '))
	return 1;
  if (prec != -1) {
    while (*arg && prec--)
      if ((*state->append_char) (state, *arg++))
	return 1;
  } else {
    while (*arg)
      if ((*state->append_char) (state, *arg++))
	return 1;
  }
  if(flags & minus_flag)
    while(width-- > 0)
      if((*state->append_char) (state, ' '))
	return 1;
  return 0;
}
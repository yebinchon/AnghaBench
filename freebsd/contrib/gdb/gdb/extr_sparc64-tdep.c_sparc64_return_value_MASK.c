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
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;

/* Variables and functions */
 int RETURN_VALUE_REGISTER_CONVENTION ; 
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,struct regcache*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,struct regcache*,void const*) ; 

__attribute__((used)) static enum return_value_convention
FUNC3 (struct gdbarch *gdbarch, struct type *type,
		      struct regcache *regcache, void *readbuf,
		      const void *writebuf)
{
  if (FUNC0 (type) > 32)
    return RETURN_VALUE_STRUCT_CONVENTION;

  if (readbuf)
    FUNC1 (type, regcache, readbuf);
  if (writebuf)
    FUNC2 (type, regcache, writebuf);

  return RETURN_VALUE_REGISTER_CONVENTION;
}
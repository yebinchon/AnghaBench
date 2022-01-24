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
struct objfile {int dummy; } ;

/* Variables and functions */
 struct type* FUNC0 (struct objfile*) ; 
 struct type** FUNC1 (int*) ; 

__attribute__((used)) static struct type *
FUNC2 (int typenums[2], struct objfile *objfile)
{
  struct type **type_addr;

  if (typenums[0] == -1)
    {
      return (FUNC0 (objfile));
    }

  type_addr = FUNC1 (typenums);

  /* If we are referring to a type not known at all yet,
     allocate an empty type for it.
     We will fill it in later if we find out how.  */
  if (*type_addr == 0)
    {
      *type_addr = FUNC0 (objfile);
    }

  return (*type_addr);
}
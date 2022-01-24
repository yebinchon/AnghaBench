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
 struct type* FUNC0 (struct type*,struct type*,struct type*) ; 
 struct type* FUNC1 (struct type*,struct type*,int,int) ; 
 struct type* FUNC2 (char**,struct objfile*) ; 
 int FUNC3 (char**,char,int*) ; 
 struct type* FUNC4 (char**,struct objfile*) ; 

__attribute__((used)) static struct type *
FUNC5 (char **pp, struct type *type,
		 struct objfile *objfile)
{
  struct type *index_type, *element_type, *range_type;
  int lower, upper;
  int adjustable = 0;
  int nbits;

  /* Format of an array type:
     "ar<index type>;lower;upper;<array_contents_type>".
     OS9000: "arlower,upper;<array_contents_type>".

     Fortran adjustable arrays use Adigits or Tdigits for lower or upper;
     for these, produce a type like float[][].  */

    {
      index_type = FUNC4 (pp, objfile);
      if (**pp != ';')
	/* Improper format of array type decl.  */
	return FUNC2 (pp, objfile);
      ++*pp;
    }

  if (!(**pp >= '0' && **pp <= '9') && **pp != '-')
    {
      (*pp)++;
      adjustable = 1;
    }
  lower = FUNC3 (pp, ';', &nbits);

  if (nbits != 0)
    return FUNC2 (pp, objfile);

  if (!(**pp >= '0' && **pp <= '9') && **pp != '-')
    {
      (*pp)++;
      adjustable = 1;
    }
  upper = FUNC3 (pp, ';', &nbits);
  if (nbits != 0)
    return FUNC2 (pp, objfile);

  element_type = FUNC4 (pp, objfile);

  if (adjustable)
    {
      lower = 0;
      upper = -1;
    }

  range_type =
    FUNC1 ((struct type *) NULL, index_type, lower, upper);
  type = FUNC0 (type, element_type, range_type);

  return type;
}
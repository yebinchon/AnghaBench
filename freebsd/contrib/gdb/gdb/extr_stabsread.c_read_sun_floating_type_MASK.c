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
typedef  struct type* TYPE_TARGET_TYPE ;

/* Variables and functions */
 int NF_COMPLEX ; 
 int NF_COMPLEX16 ; 
 int NF_COMPLEX32 ; 
 int /*<<< orphan*/  TYPE_CODE_COMPLEX ; 
 int /*<<< orphan*/  TYPE_CODE_FLT ; 
 struct type* FUNC0 (char**,struct objfile*) ; 
 struct type* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct objfile*) ; 
 int FUNC2 (char**,char,int*) ; 

__attribute__((used)) static struct type *
FUNC3 (char **pp, int typenums[2], struct objfile *objfile)
{
  int nbits;
  int details;
  int nbytes;
  struct type *rettype;

  /* The first number has more details about the type, for example
     FN_COMPLEX.  */
  details = FUNC2 (pp, ';', &nbits);
  if (nbits != 0)
    return FUNC0 (pp, objfile);

  /* The second number is the number of bytes occupied by this type */
  nbytes = FUNC2 (pp, ';', &nbits);
  if (nbits != 0)
    return FUNC0 (pp, objfile);

  if (details == NF_COMPLEX || details == NF_COMPLEX16
      || details == NF_COMPLEX32)
    {
      rettype = FUNC1 (TYPE_CODE_COMPLEX, nbytes, 0, NULL, objfile);
      TYPE_TARGET_TYPE (rettype)
	= FUNC1 (TYPE_CODE_FLT, nbytes / 2, 0, NULL, objfile);
      return rettype;
    }

  return FUNC1 (TYPE_CODE_FLT, nbytes, 0, NULL, objfile);
}
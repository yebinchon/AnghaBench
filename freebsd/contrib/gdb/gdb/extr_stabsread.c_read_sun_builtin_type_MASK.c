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
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 int TYPE_CODE_BOOL ; 
 int TYPE_CODE_INT ; 
 int TYPE_CODE_VOID ; 
 int /*<<< orphan*/  TYPE_FLAG_UNSIGNED ; 
 struct type* FUNC0 (char**,struct objfile*) ; 
 struct type* FUNC1 (int,int,int /*<<< orphan*/ ,char*,struct objfile*) ; 
 int FUNC2 (char**,char,int*) ; 

__attribute__((used)) static struct type *
FUNC3 (char **pp, int typenums[2], struct objfile *objfile)
{
  int type_bits;
  int nbits;
  int signed_type;
  enum type_code code = TYPE_CODE_INT;

  switch (**pp)
    {
    case 's':
      signed_type = 1;
      break;
    case 'u':
      signed_type = 0;
      break;
    default:
      return FUNC0 (pp, objfile);
    }
  (*pp)++;

  /* For some odd reason, all forms of char put a c here.  This is strange
     because no other type has this honor.  We can safely ignore this because
     we actually determine 'char'acterness by the number of bits specified in
     the descriptor.
     Boolean forms, e.g Fortran logical*X, put a b here.  */

  if (**pp == 'c')
    (*pp)++;
  else if (**pp == 'b')
    {
      code = TYPE_CODE_BOOL;
      (*pp)++;
    }

  /* The first number appears to be the number of bytes occupied
     by this type, except that unsigned short is 4 instead of 2.
     Since this information is redundant with the third number,
     we will ignore it.  */
  FUNC2 (pp, ';', &nbits);
  if (nbits != 0)
    return FUNC0 (pp, objfile);

  /* The second number is always 0, so ignore it too. */
  FUNC2 (pp, ';', &nbits);
  if (nbits != 0)
    return FUNC0 (pp, objfile);

  /* The third number is the number of bits for this type. */
  type_bits = FUNC2 (pp, 0, &nbits);
  if (nbits != 0)
    return FUNC0 (pp, objfile);
  /* The type *should* end with a semicolon.  If it are embedded
     in a larger type the semicolon may be the only way to know where
     the type ends.  If this type is at the end of the stabstring we
     can deal with the omitted semicolon (but we don't have to like
     it).  Don't bother to complain(), Sun's compiler omits the semicolon
     for "void".  */
  if (**pp == ';')
    ++(*pp);

  if (type_bits == 0)
    return FUNC1 (TYPE_CODE_VOID, 1,
		      signed_type ? 0 : TYPE_FLAG_UNSIGNED, (char *) NULL,
		      objfile);
  else
    return FUNC1 (code,
		      type_bits / TARGET_CHAR_BIT,
		      signed_type ? 0 : TYPE_FLAG_UNSIGNED, (char *) NULL,
		      objfile);
}
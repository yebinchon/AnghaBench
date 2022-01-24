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
struct header_file {int length; struct type** vector; } ;

/* Variables and functions */
 struct header_file* FUNC0 (int /*<<< orphan*/ ) ; 
 int INITIAL_TYPE_VECTOR_LENGTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_CODE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_objfile ; 
 struct type* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct type**,int /*<<< orphan*/ ,int) ; 
 int n_this_object_header_files ; 
 struct type* FUNC5 (int) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 int /*<<< orphan*/  symnum ; 
 int* this_object_header_files ; 
 struct type** type_vector ; 
 int type_vector_length ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,int) ; 

__attribute__((used)) static struct type **
FUNC9 (int typenums[2])
{
  int filenum = typenums[0];
  int index = typenums[1];
  unsigned old_len;
  int real_filenum;
  struct header_file *f;
  int f_orig_length;

  if (filenum == -1)		/* -1,-1 is for temporary types.  */
    return 0;

  if (filenum < 0 || filenum >= n_this_object_header_files)
    {
      FUNC2 (&symfile_complaints,
		 "Invalid symbol data: type number (%d,%d) out of range at symtab pos %d.",
		 filenum, index, symnum);
      goto error_return;
    }

  if (filenum == 0)
    {
      if (index < 0)
	{
	  /* Caller wants address of address of type.  We think
	     that negative (rs6k builtin) types will never appear as
	     "lvalues", (nor should they), so we stuff the real type
	     pointer into a temp, and return its address.  If referenced,
	     this will do the right thing.  */
	  static struct type *temp_type;

	  temp_type = FUNC5 (index);
	  return &temp_type;
	}

      /* Type is defined outside of header files.
         Find it in this object file's type vector.  */
      if (index >= type_vector_length)
	{
	  old_len = type_vector_length;
	  if (old_len == 0)
	    {
	      type_vector_length = INITIAL_TYPE_VECTOR_LENGTH;
	      type_vector = (struct type **)
		FUNC7 (type_vector_length * sizeof (struct type *));
	    }
	  while (index >= type_vector_length)
	    {
	      type_vector_length *= 2;
	    }
	  type_vector = (struct type **)
	    FUNC8 ((char *) type_vector,
		      (type_vector_length * sizeof (struct type *)));
	  FUNC4 (&type_vector[old_len], 0,
		  (type_vector_length - old_len) * sizeof (struct type *));
	}
      return (&type_vector[index]);
    }
  else
    {
      real_filenum = this_object_header_files[filenum];

      if (real_filenum >= FUNC1 (current_objfile))
	{
	  struct type *temp_type;
	  struct type **temp_type_p;

	  FUNC6 ("GDB internal error: bad real_filenum");

	error_return:
	  temp_type = FUNC3 (TYPE_CODE_ERROR, 0, 0, NULL, NULL);
	  temp_type_p = (struct type **) FUNC7 (sizeof (struct type *));
	  *temp_type_p = temp_type;
	  return temp_type_p;
	}

      f = FUNC0 (current_objfile) + real_filenum;

      f_orig_length = f->length;
      if (index >= f_orig_length)
	{
	  while (index >= f->length)
	    {
	      f->length *= 2;
	    }
	  f->vector = (struct type **)
	    FUNC8 ((char *) f->vector, f->length * sizeof (struct type *));
	  FUNC4 (&f->vector[f_orig_length], 0,
		  (f->length - f_orig_length) * sizeof (struct type *));
	}
      return (&f->vector[index]);
    }
}
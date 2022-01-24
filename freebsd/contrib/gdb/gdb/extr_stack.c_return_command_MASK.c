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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct frame_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DUMMY_FRAME ; 
 scalar_t__ RETURN_VALUE_REGISTER_CONVENTION ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 scalar_t__ TYPE_CODE_VOID ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct value*) ; 
 scalar_t__ FUNC7 (struct value*) ; 
 struct type* FUNC8 (struct value*) ; 
 struct type* builtin_type_int ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/ * current_regcache ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct frame_id,struct frame_id) ; 
 scalar_t__ FUNC12 (struct frame_id,struct frame_id) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC19 (int /*<<< orphan*/ ) ; 
 struct frame_id FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 struct value* FUNC23 (char*) ; 
 int FUNC24 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_has_registers ; 
 scalar_t__ FUNC28 (struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC29 (struct type*,struct value*) ; 
 int /*<<< orphan*/  FUNC30 (struct value*) ; 

void
FUNC31 (char *retval_exp, int from_tty)
{
  struct symbol *thisfun;
  struct value *return_value = NULL;
  const char *query_prefix = "";

  /* FIXME: cagney/2003-10-20: Perform a minimal existance test on the
     target.  If that fails, error out.  For the moment don't rely on
     get_selected_frame as it's error message is the the singularly
     obscure "No registers".  */
  if (!target_has_registers)
    FUNC9 ("No selected frame.");
  thisfun = FUNC19 (FUNC22 ());

  /* Compute the return value.  If the computation triggers an error,
     let it bail.  If the return type can't be handled, set
     RETURN_VALUE to NULL, and QUERY_PREFIX to an informational
     message.  */
  if (retval_exp)
    {
      struct type *return_type = NULL;

      /* Compute the return value.  Should the computation fail, this
         call throws an error.  */
      return_value = FUNC23 (retval_exp);

      /* Cast return value to the return type of the function.  Should
         the cast fail, this call throws an error.  */
      if (thisfun != NULL)
	return_type = FUNC5 (FUNC3 (thisfun));
      if (return_type == NULL)
	return_type = builtin_type_int;
      return_value = FUNC29 (return_type, return_value);

      /* Make sure the value is fully evaluated.  It may live in the
         stack frame we're about to pop.  */
      if (FUNC7 (return_value))
	FUNC30 (return_value);

      if (FUNC4 (return_type) == TYPE_CODE_VOID)
	/* If the return-type is "void", don't try to find the
           return-value's location.  However, do still evaluate the
           return expression so that, even when the expression result
           is discarded, side effects such as "return i++" still
           occure.  */
	return_value = NULL;
      /* FIXME: cagney/2004-01-17: If the architecture implements both
         return_value and extract_returned_value_address, should allow
         "return" to work - don't set return_value to NULL.  */
      else if (!FUNC16 (current_gdbarch)
	       && (FUNC4 (return_type) == TYPE_CODE_STRUCT
		   || FUNC4 (return_type) == TYPE_CODE_UNION))
	{
	  /* NOTE: cagney/2003-10-20: Compatibility hack for legacy
	     code.  Old architectures don't expect STORE_RETURN_VALUE
	     to be called with with a small struct that needs to be
	     stored in registers.  Don't start doing it now.  */
	  query_prefix = "\
A structure or union return type is not supported by this architecture.\n\
If you continue, the return value that you specified will be ignored.\n";
	  return_value = NULL;
	}
      else if (FUNC28 (return_type, 0))
	{
	  query_prefix = "\
The location at which to store the function's return value is unknown.\n\
If you continue, the return value that you specified will be ignored.\n";
	  return_value = NULL;
	}
    }

  /* Does an interactive user really want to do this?  Include
     information, such as how well GDB can handle the return value, in
     the query message.  */
  if (from_tty)
    {
      int confirmed;
      if (thisfun == NULL)
	confirmed = FUNC24 ("%sMake selected stack frame return now? ",
			   query_prefix);
      else
	confirmed = FUNC24 ("%sMake %s return now? ", query_prefix,
			   FUNC2 (thisfun));
      if (!confirmed)
	FUNC9 ("Not confirmed");
    }

  /* NOTE: cagney/2003-01-18: Is this silly?  Rather than pop each
     frame in turn, should this code just go straight to the relevant
     frame and pop that?  */

  /* First discard all frames inner-to the selected frame (making the
     selected frame current).  */
  {
    struct frame_id selected_id = FUNC20 (FUNC22 ());
    while (!FUNC11 (selected_id, FUNC20 (FUNC17 ())))
      {
	if (FUNC12 (selected_id, FUNC20 (FUNC17 ())))
	  /* Caught in the safety net, oops!  We've gone way past the
             selected frame.  */
	  FUNC9 ("Problem while popping stack frames (corrupt stack?)");
	FUNC13 (FUNC17 ());
      }
  }

  /* Second discard the selected frame (which is now also the current
     frame).  */
  FUNC13 (FUNC17 ());

  /* Store RETURN_VAUE in the just-returned register set.  */
  if (return_value != NULL)
    {
      struct type *return_type = FUNC8 (return_value);
      if (!FUNC16 (current_gdbarch))
	{
	  FUNC1 (return_type, current_regcache,
			      FUNC6 (return_value));
	}
      /* FIXME: cagney/2004-01-17: If extract_returned_value_address
         is available and the function is using
         RETURN_VALUE_STRUCT_CONVENTION, should use it to find the
         address of the returned value so that it can be assigned.  */
      else
	{
	  FUNC14 (FUNC15 (current_gdbarch, return_type,
					    NULL, NULL, NULL)
		      == RETURN_VALUE_REGISTER_CONVENTION);
	  FUNC15 (current_gdbarch, return_type,
				current_regcache, NULL /*read*/,
				FUNC6 (return_value) /*write*/);
	}
    }

  /* If we are at the end of a call dummy now, pop the dummy frame
     too.  */
  /* NOTE: cagney/2003-01-18: Is this silly?  Instead of popping all
     the frames in sequence, should this code just pop the dummy frame
     directly?  */
#ifdef DEPRECATED_CALL_DUMMY_HAS_COMPLETED
  /* Since all up-to-date architectures return direct to the dummy
     breakpoint address, a dummy frame has, by definition, always
     completed.  Hence this method is no longer needed.  */
  if (DEPRECATED_CALL_DUMMY_HAS_COMPLETED (read_pc(), read_sp (),
					   get_frame_base (get_current_frame ())))
    frame_pop (get_current_frame ());
#else
  if (FUNC21 (FUNC17 ()) == DUMMY_FRAME)
    FUNC13 (FUNC17 ());
#endif

  /* If interactive, print the frame that is now current.  */
  if (from_tty)
    FUNC10 ("0", 1);
  else
    FUNC27 ("0", 0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct value {int dummy; } ;
struct type {scalar_t__ modifiable; } ;
typedef  struct type* VALUE_TYPE ;
struct TYPE_5__ {TYPE_1__* symtab; scalar_t__ line; scalar_t__ pc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * filename; } ;
typedef  int /*<<< orphan*/  LONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 struct value* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_char ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* FUNC3 (struct type*,int /*<<< orphan*/ ,struct type*) ; 
 struct type* FUNC4 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 TYPE_2__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct type* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct type*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * traceframe_fun ; 
 TYPE_2__ traceframe_sal ; 
 struct type* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC13 (struct type*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (CORE_ADDR trace_pc)
{
  static struct type *func_string, *file_string;
  static struct type *func_range, *file_range;
  struct value *func_val;
  struct value *file_val;
  static struct type *charstar;
  int len;

  if (charstar == (struct type *) NULL)
    charstar = FUNC8 (builtin_type_char);

  if (trace_pc == -1)		/* cease debugging any trace buffers */
    {
      traceframe_fun = 0;
      traceframe_sal.pc = traceframe_sal.line = 0;
      traceframe_sal.symtab = NULL;
      FUNC10 (FUNC7 ("trace_func"),
		       FUNC13 (charstar, (LONGEST) 0));
      FUNC10 (FUNC7 ("trace_file"),
		       FUNC13 (charstar, (LONGEST) 0));
      FUNC10 (FUNC7 ("trace_line"),
		       FUNC12 (builtin_type_int, (LONGEST) - 1));
      return;
    }

  /* save as globals for internal use */
  traceframe_sal = FUNC6 (trace_pc, 0);
  traceframe_fun = FUNC5 (trace_pc);

  /* save linenumber as "$trace_line", a debugger variable visible to users */
  FUNC10 (FUNC7 ("trace_line"),
		   FUNC12 (builtin_type_int,
				       (LONGEST) traceframe_sal.line));

  /* save func name as "$trace_func", a debugger variable visible to users */
  if (traceframe_fun == NULL ||
      FUNC0 (traceframe_fun) == NULL)
    FUNC10 (FUNC7 ("trace_func"),
		     FUNC13 (charstar, (LONGEST) 0));
  else
    {
      len = FUNC11 (FUNC0 (traceframe_fun));
      func_range = FUNC4 (func_range,
				      builtin_type_int, 0, len - 1);
      func_string = FUNC3 (func_string,
				       builtin_type_char, func_range);
      func_val = FUNC2 (func_string);
      VALUE_TYPE (func_val) = func_string;
      FUNC9 (FUNC1 (func_val),
	      FUNC0 (traceframe_fun),
	      len);
      func_val->modifiable = 0;
      FUNC10 (FUNC7 ("trace_func"), func_val);
    }

  /* save file name as "$trace_file", a debugger variable visible to users */
  if (traceframe_sal.symtab == NULL ||
      traceframe_sal.symtab->filename == NULL)
    FUNC10 (FUNC7 ("trace_file"),
		     FUNC13 (charstar, (LONGEST) 0));
  else
    {
      len = FUNC11 (traceframe_sal.symtab->filename);
      file_range = FUNC4 (file_range,
				      builtin_type_int, 0, len - 1);
      file_string = FUNC3 (file_string,
				       builtin_type_char, file_range);
      file_val = FUNC2 (file_string);
      VALUE_TYPE (file_val) = file_string;
      FUNC9 (FUNC1 (file_val),
	      traceframe_sal.symtab->filename,
	      len);
      file_val->modifiable = 0;
      FUNC10 (FUNC7 ("trace_file"), file_val);
    }
}
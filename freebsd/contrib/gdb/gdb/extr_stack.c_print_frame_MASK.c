#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct symtab_and_line {scalar_t__ pc; TYPE_1__* symtab; int /*<<< orphan*/  line; } ;
struct symbol {int dummy; } ;
struct print_args_args {int /*<<< orphan*/  stream; struct symbol* func; struct frame_info* fi; } ;
typedef  struct symbol minimal_symbol ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum language { ____Placeholder_language } language ;
struct TYPE_2__ {char* filename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  DMGL_ANSI ; 
 int LOC_AND_ADDRESS ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 
 int FUNC4 (struct symbol*) ; 
 char* FUNC5 (struct symbol*) ; 
 scalar_t__ FUNC6 (struct symbol*) ; 
 scalar_t__ addressprint ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct print_args_args*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct cleanup*) ; 
 struct symbol* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC23 (struct frame_info*) ; 
 scalar_t__ FUNC24 (struct frame_info*) ; 
 int language_cplus ; 
 int language_unknown ; 
 struct symbol* FUNC25 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC26 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC27 (struct ui_stream*) ; 
 struct cleanup* FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  print_args_stub ; 
 int /*<<< orphan*/  ui_left ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*,struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,char*,char*) ; 
 struct ui_stream* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC37 (struct frame_info *fi, 
	     int level, 
	     int source, 
	     int args, 
	     struct symtab_and_line sal)
{
  struct symbol *func;
  char *funname = 0;
  enum language funlang = language_unknown;
  struct ui_stream *stb;
  struct cleanup *old_chain;
  struct cleanup *list_chain;

  stb = FUNC34 (uiout);
  old_chain = FUNC27 (stb);

  func = FUNC21 (FUNC23 (fi));
  if (func)
    {
      /* In certain pathological cases, the symtabs give the wrong
         function (when we are in the first function in a file which
         is compiled without debugging symbols, the previous function
         is compiled with debugging symbols, and the "foo.o" symbol
         that is supposed to tell us where the file with debugging symbols
         ends has been truncated by ar because it is longer than 15
         characters).  This also occurs if the user uses asm() to create
         a function but not stabs for it (in a file compiled -g).

         So look in the minimal symbol tables as well, and if it comes
         up with a larger address for the function use that instead.
         I don't think this can ever cause any problems; there shouldn't
         be any minimal symbols in the middle of a function; if this is
         ever changed many parts of GDB will need to be changed (and we'll
         create a find_pc_minimal_function or some such).  */

      struct minimal_symbol *msymbol = FUNC25 (FUNC23 (fi));
      if (msymbol != NULL
	  && (FUNC6 (msymbol)
	      > FUNC0 (FUNC3 (func))))
	{
#if 0
	  /* There is no particular reason to think the line number
	     information is wrong.  Someone might have just put in
	     a label with asm() but left the line numbers alone.  */
	  /* In this case we have no way of knowing the source file
	     and line number, so don't print them.  */
	  sal.symtab = 0;
#endif
	  /* We also don't know anything about the function besides
	     its address and name.  */
	  func = 0;
	  funname = FUNC1 (msymbol);
	  funlang = FUNC4 (msymbol);
	}
      else
	{
	  /* I'd like to use SYMBOL_PRINT_NAME() here, to display the
	     demangled name that we already have stored in the symbol
	     table, but we stored a version with DMGL_PARAMS turned
	     on, and here we don't want to display parameters. So call
	     the demangler again, with DMGL_ANSI only. (Yes, I know
	     that printf_symbol_filtered() will again try to demangle
	     the name on the fly, but the issue is that if
	     cplus_demangle() fails here, it'll fail there too. So we
	     want to catch the failure ("demangled==NULL" case below)
	     here, while we still have our hands on the function
	     symbol.) */
	  char *demangled;
	  funname = FUNC1 (func);
	  funlang = FUNC4 (func);
	  if (funlang == language_cplus)
	    {
	      demangled = FUNC19 (funname, DMGL_ANSI);
	      if (demangled == NULL)
		/* If the demangler fails, try the demangled name from
		   the symbol table. This'll have parameters, but
		   that's preferable to diplaying a mangled name. */
		funname = FUNC5 (func);
	    }
	}
    }
  else
    {
      struct minimal_symbol *msymbol = FUNC25 (FUNC23 (fi));
      if (msymbol != NULL)
	{
	  funname = FUNC1 (msymbol);
	  funlang = FUNC4 (msymbol);
	}
    }

  FUNC10 (level == -1 ? 0 : level, FUNC24 (fi));

  list_chain = FUNC28 (uiout, "frame");

  if (level >= 0)
    {
      FUNC35 (uiout, "#");
      FUNC30 (uiout, 2, ui_left, "level", level);
    }
  if (addressprint)
    if (FUNC24 (fi) != sal.pc
	|| !sal.symtab
	|| source == LOC_AND_ADDRESS)
      {
	FUNC7 ();
	FUNC29 (uiout, "addr", FUNC24 (fi));
	FUNC8 ();
	FUNC35 (uiout, " in ");
      }
  FUNC11 ();
  FUNC22 (stb->stream, funname ? funname : "??", funlang,
			   DMGL_ANSI);
  FUNC32 (uiout, "func", stb);
  FUNC36 (uiout, "   ");
  FUNC9 ();
      
  FUNC35 (uiout, " (");
  if (args)
    {
      struct print_args_args args;
      struct cleanup *args_list_chain;
      args.fi = fi;
      args.func = func;
      args.stream = gdb_stdout;
      args_list_chain = FUNC26 (uiout, "args");
      FUNC18 (print_args_stub, &args, "", RETURN_MASK_ALL);
      /* FIXME: args must be a list. If one argument is a string it will
		 have " that will not be properly escaped.  */
      /* Invoke ui_out_tuple_end.  */
      FUNC20 (args_list_chain);
      QUIT;
    }
  FUNC35 (uiout, ")");
  if (sal.symtab && sal.symtab->filename)
    {
      FUNC12 ();
      FUNC36 (uiout, "   ");
      FUNC35 (uiout, " at ");
      FUNC14 ();
      FUNC33 (uiout, "file", sal.symtab->filename);
      FUNC15 ();
      FUNC35 (uiout, ":");
      FUNC16 ();
      FUNC31 (uiout, "line", sal.line);
      FUNC13 ();
    }

#ifdef PC_SOLIB
  if (!funname || (!sal.symtab || !sal.symtab->filename))
    {
      char *lib = PC_SOLIB (get_frame_pc (fi));
      if (lib)
	{
	  annotate_frame_where ();
	  ui_out_wrap_hint (uiout, "  ");
	  ui_out_text (uiout, " from ");
	  ui_out_field_string (uiout, "from", lib);
	}
    }
#endif /* PC_SOLIB */

  /* do_cleanups will call ui_out_tuple_end() for us.  */
  FUNC20 (list_chain);
  FUNC35 (uiout, "\n");
  FUNC20 (old_chain);
}
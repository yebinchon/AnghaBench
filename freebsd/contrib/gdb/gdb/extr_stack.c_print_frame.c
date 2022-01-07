
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_stream {int stream; } ;
struct symtab_and_line {scalar_t__ pc; TYPE_1__* symtab; int line; } ;
struct symbol {int dummy; } ;
struct print_args_args {int stream; struct symbol* func; struct frame_info* fi; } ;
typedef struct symbol minimal_symbol ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum language { ____Placeholder_language } language ;
struct TYPE_2__ {char* filename; } ;


 scalar_t__ BLOCK_START (int ) ;
 char* DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 int DMGL_ANSI ;
 int LOC_AND_ADDRESS ;
 char* PC_SOLIB (scalar_t__) ;
 int QUIT ;
 int RETURN_MASK_ALL ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 int SYMBOL_LANGUAGE (struct symbol*) ;
 char* SYMBOL_PRINT_NAME (struct symbol*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 scalar_t__ addressprint ;
 int annotate_frame_address () ;
 int annotate_frame_address_end () ;
 int annotate_frame_args () ;
 int annotate_frame_begin (int,scalar_t__) ;
 int annotate_frame_function_name () ;
 int annotate_frame_source_begin () ;
 int annotate_frame_source_end () ;
 int annotate_frame_source_file () ;
 int annotate_frame_source_file_end () ;
 int annotate_frame_source_line () ;
 int annotate_frame_where () ;
 int catch_errors (int ,struct print_args_args*,char*,int ) ;
 char* cplus_demangle (char*,int ) ;
 int do_cleanups (struct cleanup*) ;
 struct symbol* find_pc_function (int ) ;
 int fprintf_symbol_filtered (int ,char*,int,int ) ;
 int gdb_stdout ;
 int get_frame_address_in_block (struct frame_info*) ;
 scalar_t__ get_frame_pc (struct frame_info*) ;
 int language_cplus ;
 int language_unknown ;
 struct symbol* lookup_minimal_symbol_by_pc (int ) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 struct cleanup* make_cleanup_ui_out_stream_delete (struct ui_stream*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 int print_args_stub ;
 int ui_left ;
 int ui_out_field_core_addr (int ,char*,scalar_t__) ;
 int ui_out_field_fmt_int (int ,int,int ,char*,int) ;
 int ui_out_field_int (int ,char*,int ) ;
 int ui_out_field_stream (int ,char*,struct ui_stream*) ;
 int ui_out_field_string (int ,char*,char*) ;
 struct ui_stream* ui_out_stream_new (int ) ;
 int ui_out_text (int ,char*) ;
 int ui_out_wrap_hint (int ,char*) ;
 int uiout ;

__attribute__((used)) static void
print_frame (struct frame_info *fi,
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

  stb = ui_out_stream_new (uiout);
  old_chain = make_cleanup_ui_out_stream_delete (stb);

  func = find_pc_function (get_frame_address_in_block (fi));
  if (func)
    {
      struct minimal_symbol *msymbol = lookup_minimal_symbol_by_pc (get_frame_address_in_block (fi));
      if (msymbol != ((void*)0)
   && (SYMBOL_VALUE_ADDRESS (msymbol)
       > BLOCK_START (SYMBOL_BLOCK_VALUE (func))))
 {
   func = 0;
   funname = DEPRECATED_SYMBOL_NAME (msymbol);
   funlang = SYMBOL_LANGUAGE (msymbol);
 }
      else
 {
   char *demangled;
   funname = DEPRECATED_SYMBOL_NAME (func);
   funlang = SYMBOL_LANGUAGE (func);
   if (funlang == language_cplus)
     {
       demangled = cplus_demangle (funname, DMGL_ANSI);
       if (demangled == ((void*)0))



  funname = SYMBOL_PRINT_NAME (func);
     }
 }
    }
  else
    {
      struct minimal_symbol *msymbol = lookup_minimal_symbol_by_pc (get_frame_address_in_block (fi));
      if (msymbol != ((void*)0))
 {
   funname = DEPRECATED_SYMBOL_NAME (msymbol);
   funlang = SYMBOL_LANGUAGE (msymbol);
 }
    }

  annotate_frame_begin (level == -1 ? 0 : level, get_frame_pc (fi));

  list_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "frame");

  if (level >= 0)
    {
      ui_out_text (uiout, "#");
      ui_out_field_fmt_int (uiout, 2, ui_left, "level", level);
    }
  if (addressprint)
    if (get_frame_pc (fi) != sal.pc
 || !sal.symtab
 || source == LOC_AND_ADDRESS)
      {
 annotate_frame_address ();
 ui_out_field_core_addr (uiout, "addr", get_frame_pc (fi));
 annotate_frame_address_end ();
 ui_out_text (uiout, " in ");
      }
  annotate_frame_function_name ();
  fprintf_symbol_filtered (stb->stream, funname ? funname : "??", funlang,
      DMGL_ANSI);
  ui_out_field_stream (uiout, "func", stb);
  ui_out_wrap_hint (uiout, "   ");
  annotate_frame_args ();

  ui_out_text (uiout, " (");
  if (args)
    {
      struct print_args_args args;
      struct cleanup *args_list_chain;
      args.fi = fi;
      args.func = func;
      args.stream = gdb_stdout;
      args_list_chain = make_cleanup_ui_out_list_begin_end (uiout, "args");
      catch_errors (print_args_stub, &args, "", RETURN_MASK_ALL);



      do_cleanups (args_list_chain);
      QUIT;
    }
  ui_out_text (uiout, ")");
  if (sal.symtab && sal.symtab->filename)
    {
      annotate_frame_source_begin ();
      ui_out_wrap_hint (uiout, "   ");
      ui_out_text (uiout, " at ");
      annotate_frame_source_file ();
      ui_out_field_string (uiout, "file", sal.symtab->filename);
      annotate_frame_source_file_end ();
      ui_out_text (uiout, ":");
      annotate_frame_source_line ();
      ui_out_field_int (uiout, "line", sal.line);
      annotate_frame_source_end ();
    }
  do_cleanups (list_chain);
  ui_out_text (uiout, "\n");
  do_cleanups (old_chain);
}

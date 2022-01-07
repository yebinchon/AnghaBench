
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ pc; scalar_t__ line; scalar_t__ symtab; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;


 scalar_t__ DUMMY_FRAME ;
 int LOCATION ;
 int LOC_AND_ADDRESS ;
 scalar_t__ SIGTRAMP_FRAME ;
 int SRC_AND_LOC ;
 int SRC_LINE ;
 scalar_t__ addressprint ;
 int annotate_frame_address () ;
 int annotate_frame_address_end () ;
 int annotate_frame_begin (int,scalar_t__) ;
 int annotate_frame_end () ;
 int annotate_function_call () ;
 int annotate_signal_handler_caller () ;
 scalar_t__ annotation_level ;
 int do_cleanups (struct cleanup*) ;
 int find_frame_sal (struct frame_info*,struct symtab_and_line*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 struct symtab_and_line get_current_source_symtab_and_line () ;
 scalar_t__ get_frame_pc (struct frame_info*) ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 int get_lines_to_list () ;
 int identify_source_line (scalar_t__,scalar_t__,int,scalar_t__) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 scalar_t__ max (scalar_t__,int) ;
 int print_frame (struct frame_info*,int,int,int,struct symtab_and_line) ;
 int print_frame_info_listing_hook (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int print_source_lines (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int set_current_source_symtab_and_line (struct symtab_and_line*) ;
 int set_default_breakpoint (int,scalar_t__,scalar_t__,scalar_t__) ;
 int set_default_source_symtab_and_line () ;
 int ui_left ;
 int ui_out_field_core_addr (int ,char*,scalar_t__) ;
 int ui_out_field_fmt_int (int ,int,int ,char*,int) ;
 int ui_out_field_string (int ,char*,char*) ;
 scalar_t__ ui_out_is_mi_like_p (int ) ;
 int ui_out_text (int ,char*) ;
 int uiout ;

void
print_frame_info (struct frame_info *fi, int level, int source, int args)
{
  struct symtab_and_line sal;
  int source_print;
  int location_print;

  if (get_frame_type (fi) == DUMMY_FRAME
      || get_frame_type (fi) == SIGTRAMP_FRAME)
    {
      struct cleanup *uiout_cleanup
 = make_cleanup_ui_out_tuple_begin_end (uiout, "frame");

      annotate_frame_begin (level == -1 ? 0 : level, get_frame_pc (fi));



      if (level >= 0)
        {
          ui_out_text (uiout, "#");
          ui_out_field_fmt_int (uiout, 2, ui_left, "level", level);
        }
      if (ui_out_is_mi_like_p (uiout))
        {
          annotate_frame_address ();
          ui_out_field_core_addr (uiout, "addr", get_frame_pc (fi));
          annotate_frame_address_end ();
        }

      if (get_frame_type (fi) == DUMMY_FRAME)
        {
          annotate_function_call ();
          ui_out_field_string (uiout, "func", "<function called from gdb>");
 }
      else if (get_frame_type (fi) == SIGTRAMP_FRAME)
        {
   annotate_signal_handler_caller ();
          ui_out_field_string (uiout, "func", "<signal handler called>");
        }
      ui_out_text (uiout, "\n");
      annotate_frame_end ();

      do_cleanups (uiout_cleanup);
      return;
    }







  find_frame_sal (fi, &sal);

  location_print = (source == LOCATION
      || source == LOC_AND_ADDRESS
      || source == SRC_AND_LOC);

  if (location_print || !sal.symtab)
    print_frame (fi, level, source, args, sal);

  source_print = (source == SRC_LINE || source == SRC_AND_LOC);

  if (sal.symtab)
    set_current_source_symtab_and_line (&sal);

  if (source_print && sal.symtab)
    {
      struct symtab_and_line cursal;
      int done = 0;
      int mid_statement = (source == SRC_LINE) && (get_frame_pc (fi) != sal.pc);

      if (annotation_level)
 done = identify_source_line (sal.symtab, sal.line, mid_statement,
         get_frame_pc (fi));
      if (!done)
 {
   if (print_frame_info_listing_hook)
     print_frame_info_listing_hook (sal.symtab, sal.line, sal.line + 1, 0);
   else
     {
       if (addressprint && mid_statement)
  {
    ui_out_field_core_addr (uiout, "addr", get_frame_pc (fi));
    ui_out_text (uiout, "\t");
  }

       print_source_lines (sal.symtab, sal.line, sal.line + 1, 0);
     }
 }

      set_default_source_symtab_and_line ();
      cursal = get_current_source_symtab_and_line ();
      cursal.line = max (sal.line - get_lines_to_list () / 2, 1);
      set_current_source_symtab_and_line (&cursal);
    }

  if (source != 0)
    set_default_breakpoint (1, get_frame_pc (fi), sal.symtab, sal.line);

  annotate_frame_end ();

  gdb_flush (gdb_stdout);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int dummy; } ;
struct frame_info {int dummy; } ;


 int PSYMTAB_TO_SYMTAB (struct partial_symtab*) ;
 int QUIT ;
 int error (char*) ;
 struct partial_symtab* find_pc_psymtab (int ) ;
 int gdb_stdout ;
 struct frame_info* get_current_frame () ;
 int get_frame_address_in_block (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 scalar_t__ info_verbose ;
 int parse_and_eval_long (char*) ;
 int print_frame_info (struct frame_info*,int,int ,int) ;
 int print_frame_local_vars (struct frame_info*,int,int ) ;
 int printf_filtered (char*) ;
 int target_has_stack ;

__attribute__((used)) static void
backtrace_command_1 (char *count_exp, int show_locals, int from_tty)
{
  struct frame_info *fi;
  int count;
  int i;
  struct frame_info *trailing;
  int trailing_level;

  if (!target_has_stack)
    error ("No stack.");





  trailing = get_current_frame ();



  if (trailing == ((void*)0))
    error ("No stack.");

  trailing_level = 0;
  if (count_exp)
    {
      count = parse_and_eval_long (count_exp);
      if (count < 0)
 {
   struct frame_info *current;

   count = -count;

   current = trailing;
   while (current && count--)
     {
       QUIT;
       current = get_prev_frame (current);
     }



   while (current)
     {
       QUIT;
       trailing = get_prev_frame (trailing);
       current = get_prev_frame (current);
       trailing_level++;
     }

   count = -1;
 }
    }
  else
    count = -1;

  if (info_verbose)
    {
      struct partial_symtab *ps;






      i = count;
      for (fi = trailing;
    fi != ((void*)0) && i--;
    fi = get_prev_frame (fi))
 {
   QUIT;
   ps = find_pc_psymtab (get_frame_address_in_block (fi));
   if (ps)
     PSYMTAB_TO_SYMTAB (ps);
 }
    }

  for (i = 0, fi = trailing;
       fi && count--;
       i++, fi = get_prev_frame (fi))
    {
      QUIT;





      print_frame_info (fi, trailing_level + i, 0, 1);
      if (show_locals)
 print_frame_local_vars (fi, 1, gdb_stdout);
    }


  if (fi && from_tty)
    printf_filtered ("(More stack frames follow...)\n");
}

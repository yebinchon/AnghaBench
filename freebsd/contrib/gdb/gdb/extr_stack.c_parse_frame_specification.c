
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 int MAXARGS ;
 struct frame_info* SETUP_ARBITRARY_FRAME (int,int *) ;
 struct frame_info* create_new_frame (int ,int ) ;
 struct frame_info* deprecated_selected_frame ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,...) ;
 struct frame_info* find_relative_frame (struct frame_info*,int*) ;
 struct frame_info* get_current_frame () ;
 int get_frame_base (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int paddr_d (int ) ;
 struct value* parse_and_eval (char*) ;
 char* savestring (char*,int) ;
 int value_as_address (struct value*) ;
 int value_as_long (struct value*) ;
 int xfree ;

struct frame_info *
parse_frame_specification (char *frame_exp)
{
  int numargs = 0;

  CORE_ADDR args[4];
  int level;

  if (frame_exp)
    {
      char *addr_string, *p;
      struct cleanup *tmp_cleanup;

      while (*frame_exp == ' ')
 frame_exp++;

      while (*frame_exp)
 {
   if (numargs > 4)
     error ("Too many args in frame specification");

   for (p = frame_exp; *p && *p != ' '; p++)
     ;
   addr_string = savestring (frame_exp, p - frame_exp);

   {
     struct value *vp;

     tmp_cleanup = make_cleanup (xfree, addr_string);






     vp = parse_and_eval (addr_string);
     if (numargs == 0)
       level = value_as_long (vp);

     args[numargs++] = value_as_address (vp);
     do_cleanups (tmp_cleanup);
   }


   while (*p == ' ')
     p++;
   frame_exp = p;
 }
    }

  switch (numargs)
    {
    case 0:
      if (deprecated_selected_frame == ((void*)0))
 error ("No selected frame.");
      return deprecated_selected_frame;

    case 1:
      {
 struct frame_info *fid =
 find_relative_frame (get_current_frame (), &level);
 struct frame_info *tfid;

 if (level == 0)

   return fid;
 for (fid = get_current_frame ();
      fid && get_frame_base (fid) != args[0];
      fid = get_prev_frame (fid))
   ;

 if (fid)
   while ((tfid = get_prev_frame (fid)) &&
   (get_frame_base (tfid) == args[0]))
     fid = tfid;



      }

    default:





      if (numargs == 1)
 return create_new_frame (args[0], 0);
      error ("Too many args in frame specification");


    }

}

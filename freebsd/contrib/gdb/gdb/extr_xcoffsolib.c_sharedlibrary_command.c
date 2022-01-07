
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap {char* name; char* member; scalar_t__ loaded; struct vmap* nxt; } ;


 int PIDGET (int ) ;
 int dont_repeat () ;
 int error (char*,char*) ;
 int inferior_ptid ;
 int null_ptid ;
 int printf_unfiltered (char*,char*) ;
 int ptid_equal (int ,int ) ;
 char* re_comp (char*) ;
 scalar_t__ re_exec (char*) ;
 int reinit_frame_cache () ;
 struct vmap* vmap ;
 scalar_t__ vmap_add_symbols (struct vmap*) ;
 int xcoff_relocate_symtab (int ) ;

__attribute__((used)) static void
sharedlibrary_command (char *pattern, int from_tty)
{
  dont_repeat ();


  if (! ptid_equal (inferior_ptid, null_ptid))
    xcoff_relocate_symtab (PIDGET (inferior_ptid));

  if (pattern)
    {
      char *re_err = re_comp (pattern);

      if (re_err)
 error ("Invalid regexp: %s", re_err);
    }




  {
    int any_matches = 0;
    int loaded_any_symbols = 0;
    struct vmap *vp = vmap;

    if (!vp)
      return;


    for (vp = vp->nxt; vp; vp = vp->nxt)
      if (! pattern
     || re_exec (vp->name)
     || (*vp->member && re_exec (vp->member)))
 {
   any_matches = 1;

   if (vp->loaded)
     {
       if (from_tty)
  printf_unfiltered ("Symbols already loaded for %s\n",
       vp->name);
     }
   else
     {
       if (vmap_add_symbols (vp))
  loaded_any_symbols = 1;
     }
 }

    if (from_tty && pattern && ! any_matches)
      printf_unfiltered
 ("No loaded shared libraries match the pattern `%s'.\n", pattern);

    if (loaded_any_symbols)
      {


 reinit_frame_cache ();
      }
  }
}

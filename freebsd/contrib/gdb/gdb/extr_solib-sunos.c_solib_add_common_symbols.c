
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rtc_symb {int rtc_next; int rtc_sp; } ;
struct TYPE_6__ {int n_strx; int n_name; } ;
struct nlist {scalar_t__ n_type; int n_value; TYPE_1__ n_un; } ;
typedef int inferior_rtc_symb ;
typedef int inferior_rtc_nlist ;
struct TYPE_7__ {int * msymbols; scalar_t__ minimal_symbol_count; int objfile_obstack; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ N_COMM ;
 scalar_t__ SOLIB_EXTRACT_ADDRESS (int ) ;
 int allocate_rt_common_objfile () ;
 int init_minimal_symbol_collection () ;
 int install_minimal_symbols (TYPE_2__*) ;
 int make_cleanup_discard_minimal_symbols () ;
 int mst_bss ;
 int obstack_free (int *,int ) ;
 int obstack_init (int *) ;
 int prim_record_minimal_symbol (char*,int,int ,TYPE_2__*) ;
 int read_memory (scalar_t__,char*,int) ;
 TYPE_2__* rt_common_objfile ;
 int terminate_minimal_symbol_table (TYPE_2__*) ;
 int xfree (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
solib_add_common_symbols (CORE_ADDR rtc_symp)
{
  struct rtc_symb inferior_rtc_symb;
  struct nlist inferior_rtc_nlist;
  int len;
  char *name;



  if (rt_common_objfile != ((void*)0) && rt_common_objfile->minimal_symbol_count)
    {
      obstack_free (&rt_common_objfile->objfile_obstack, 0);
      obstack_init (&rt_common_objfile->objfile_obstack);
      rt_common_objfile->minimal_symbol_count = 0;
      rt_common_objfile->msymbols = ((void*)0);
      terminate_minimal_symbol_table (rt_common_objfile);
    }

  init_minimal_symbol_collection ();
  make_cleanup_discard_minimal_symbols ();

  while (rtc_symp)
    {
      read_memory (rtc_symp,
     (char *) &inferior_rtc_symb,
     sizeof (inferior_rtc_symb));
      read_memory (SOLIB_EXTRACT_ADDRESS (inferior_rtc_symb.rtc_sp),
     (char *) &inferior_rtc_nlist,
     sizeof (inferior_rtc_nlist));
      if (inferior_rtc_nlist.n_type == N_COMM)
 {



   len = inferior_rtc_nlist.n_value - inferior_rtc_nlist.n_un.n_strx;

   name = xmalloc (len);
   read_memory (SOLIB_EXTRACT_ADDRESS (inferior_rtc_nlist.n_un.n_name),
         name, len);


   if (rt_common_objfile == ((void*)0))
     allocate_rt_common_objfile ();

   prim_record_minimal_symbol (name, inferior_rtc_nlist.n_value,
          mst_bss, rt_common_objfile);
   xfree (name);
 }
      rtc_symp = SOLIB_EXTRACT_ADDRESS (inferior_rtc_symb.rtc_next);
    }




  install_minimal_symbols (rt_common_objfile);
}

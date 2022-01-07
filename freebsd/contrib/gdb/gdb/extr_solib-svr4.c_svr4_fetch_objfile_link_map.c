
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {char* name; int flags; } ;
struct lm_info {char* lm; } ;
struct link_map_offsets {int l_next_offset; int l_next_size; int l_name_size; scalar_t__ l_name_offset; int link_map_size; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int OBJF_SHARED ;
 scalar_t__ SO_NAME_MAX_PATH_SIZE ;
 struct link_map_offsets* SVR4_FETCH_LINK_MAP_OFFSETS () ;
 int debug_base ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ extract_unsigned_integer (char*,int ) ;
 scalar_t__ first_link_map_member () ;
 int locate_base () ;
 struct cleanup* make_cleanup (int ,char*) ;
 int memset (char*,int ,int ) ;
 int read_memory (scalar_t__,char*,int ) ;
 int safe_strerror (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int target_read_string (scalar_t__,char**,scalar_t__,int*) ;
 int warning (char*,int ) ;
 int xfree ;
 void* xmalloc (int ) ;

CORE_ADDR
svr4_fetch_objfile_link_map (struct objfile *objfile)
{
  CORE_ADDR lm;

  if ((debug_base = locate_base ()) == 0)
    return 0;


  lm = first_link_map_member ();
  while (lm)
    {

      struct link_map_offsets *lmo = SVR4_FETCH_LINK_MAP_OFFSETS ();
      int errcode;
      char *buffer;
      struct lm_info objfile_lm_info;
      struct cleanup *old_chain;
      CORE_ADDR name_address;
      char *l_name_buf = xmalloc (lmo->l_name_size);
      old_chain = make_cleanup (xfree, l_name_buf);




      objfile_lm_info.lm = xmalloc (lmo->link_map_size);
      make_cleanup (xfree, objfile_lm_info.lm);
      memset (objfile_lm_info.lm, 0, lmo->link_map_size);


      read_memory (lm, objfile_lm_info.lm, lmo->link_map_size);


      read_memory (lm + lmo->l_name_offset, l_name_buf, lmo->l_name_size);



      name_address = extract_unsigned_integer (l_name_buf, lmo->l_name_size);
      target_read_string (name_address, &buffer,
           SO_NAME_MAX_PATH_SIZE - 1, &errcode);
      make_cleanup (xfree, buffer);
      if (errcode != 0)
     {
   warning ("svr4_fetch_objfile_link_map: Can't read pathname for load map: %s\n",
       safe_strerror (errcode));
   }
      else
   {



   if ((buffer && strcmp (buffer, objfile->name) == 0)
              || (!(objfile->flags & OBJF_SHARED) && (strcmp (buffer, "") == 0)))
       {
           do_cleanups (old_chain);
           return lm;
           }
   }


      lm = extract_unsigned_integer (objfile_lm_info.lm + lmo->l_next_offset,
         lmo->l_next_size);
      do_cleanups (old_chain);
    }
  return 0;
}

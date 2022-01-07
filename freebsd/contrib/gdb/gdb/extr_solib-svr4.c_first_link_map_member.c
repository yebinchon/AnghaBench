
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_map_offsets {int r_map_size; scalar_t__ r_map_offset; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 struct link_map_offsets* SVR4_FETCH_LINK_MAP_OFFSETS () ;
 scalar_t__ debug_base ;
 int do_cleanups (struct cleanup*) ;
 int extract_unsigned_integer (char*,int ) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int read_memory (scalar_t__,char*,int ) ;
 int xfree ;
 char* xmalloc (int ) ;

__attribute__((used)) static CORE_ADDR
first_link_map_member (void)
{
  CORE_ADDR lm = 0;
  struct link_map_offsets *lmo = SVR4_FETCH_LINK_MAP_OFFSETS ();
  char *r_map_buf = xmalloc (lmo->r_map_size);
  struct cleanup *cleanups = make_cleanup (xfree, r_map_buf);

  read_memory (debug_base + lmo->r_map_offset, r_map_buf, lmo->r_map_size);


  lm = extract_unsigned_integer (r_map_buf, lmo->r_map_size);





  do_cleanups (cleanups);

  return (lm);
}

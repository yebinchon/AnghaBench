
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_list {char* so_name; struct so_list* next; int so_original_name; struct so_list* lm; struct so_list* lm_info; } ;
struct lm_info {int dummy; } ;
struct link_map {int dummy; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int LM_NAME (struct so_list*) ;
 scalar_t__ LM_NEXT (struct so_list*) ;
 int SO_NAME_MAX_PATH_SIZE ;
 scalar_t__ debug_base ;
 int discard_cleanups (struct cleanup*) ;
 scalar_t__ first_link_map_member () ;
 int free_so (struct so_list*) ;
 scalar_t__ locate_base () ;
 struct cleanup* make_cleanup (int (*) (char*),struct so_list*) ;
 scalar_t__ match_main (char*) ;
 int memset (struct so_list*,int ,int) ;
 int read_memory (scalar_t__,struct so_list*,int) ;
 int safe_strerror (int) ;
 int strcpy (int ,char*) ;
 int strncpy (char*,char*,int) ;
 int target_read_string (int ,char**,int,int*) ;
 int warning (char*,int ) ;
 int xfree (char*) ;
 void* xmalloc (int) ;

__attribute__((used)) static struct so_list *
sunos_current_sos (void)
{
  CORE_ADDR lm;
  struct so_list *head = 0;
  struct so_list **link_ptr = &head;
  int errcode;
  char *buffer;



  if (! debug_base)
    {
      debug_base = locate_base ();



      if (! debug_base)
 return 0;
    }



  lm = first_link_map_member ();
  while (lm)
    {
      struct so_list *new
 = (struct so_list *) xmalloc (sizeof (struct so_list));
      struct cleanup *old_chain = make_cleanup (xfree, new);

      memset (new, 0, sizeof (*new));

      new->lm_info = xmalloc (sizeof (struct lm_info));
      make_cleanup (xfree, new->lm_info);

      new->lm_info->lm = xmalloc (sizeof (struct link_map));
      make_cleanup (xfree, new->lm_info->lm);
      memset (new->lm_info->lm, 0, sizeof (struct link_map));

      read_memory (lm, new->lm_info->lm, sizeof (struct link_map));

      lm = LM_NEXT (new);


      target_read_string (LM_NAME (new), &buffer,
     SO_NAME_MAX_PATH_SIZE - 1, &errcode);
      if (errcode != 0)
 {
   warning ("current_sos: Can't read pathname for load map: %s\n",
     safe_strerror (errcode));
 }
      else
 {
   strncpy (new->so_name, buffer, SO_NAME_MAX_PATH_SIZE - 1);
   new->so_name[SO_NAME_MAX_PATH_SIZE - 1] = '\0';
   xfree (buffer);
   strcpy (new->so_original_name, new->so_name);
 }



      if (! new->so_name[0]
   || match_main (new->so_name))
 free_so (new);
      else
 {
   new->next = 0;
   *link_ptr = new;
   link_ptr = &new->next;
 }

      discard_cleanups (old_chain);
    }

  return head;
}

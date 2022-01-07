
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {struct so_list* next; TYPE_1__* lm_info; } ;
struct read_map_ctxt {int dummy; } ;
struct TYPE_2__ {int isloader; } ;


 int close_map (struct read_map_ctxt*) ;
 int memcpy (struct so_list*,struct so_list*,int) ;
 int open_map (struct read_map_ctxt*) ;
 int osf_free_so (struct so_list*) ;
 int read_map (struct read_map_ctxt*,struct so_list*) ;
 struct so_list* xmalloc (int) ;

__attribute__((used)) static struct so_list *
osf_current_sos (void)
{
  struct so_list *head = ((void*)0), *tail, *newtail, so;
  struct read_map_ctxt ctxt;
  int skipped_main;

  if (!open_map (&ctxt))
    return ((void*)0);


  for (skipped_main = 0;;)
    {
      if (!read_map (&ctxt, &so))
 break;



      if (!so.lm_info->isloader && !skipped_main)
 {
   osf_free_so (&so);
   skipped_main = 1;
   continue;
 }

      newtail = xmalloc (sizeof *newtail);
      if (!head)
 head = newtail;
      else
 tail->next = newtail;
      tail = newtail;

      memcpy (tail, &so, sizeof so);
      tail->next = ((void*)0);
    }

 done:
  close_map (&ctxt);
  return head;
}

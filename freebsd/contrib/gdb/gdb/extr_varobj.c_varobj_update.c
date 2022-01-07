
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vstack {int dummy; } ;
struct varobj_child {struct varobj* child; struct varobj_child* next; } ;
struct varobj {int error; struct value* value; scalar_t__ updated; int index; int parent; struct varobj_child* children; TYPE_1__* root; } ;
struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct TYPE_2__ {struct varobj* rootvar; } ;


 int deprecated_selected_frame ;
 struct frame_info* frame_find_by_id (struct frame_id) ;
 struct frame_id get_frame_id (int ) ;
 int my_value_equal (struct value*,struct value*,int*) ;
 int select_frame (struct frame_info*) ;
 scalar_t__ type_changeable (struct varobj*) ;
 int value_free (struct value*) ;
 struct value* value_of_child (int ,int ) ;
 struct value* value_of_root (struct varobj**,int*) ;
 struct varobj* vpop (struct vstack**) ;
 int vpush (struct vstack**,struct varobj*) ;
 int warning (char*) ;
 struct varobj** xmalloc (int) ;

int
varobj_update (struct varobj **varp, struct varobj ***changelist)
{
  int changed = 0;
  int type_changed;
  int i;
  int vleft;
  int error2;
  struct varobj *v;
  struct varobj **cv;
  struct varobj **templist = ((void*)0);
  struct value *new;
  struct vstack *stack = ((void*)0);
  struct vstack *result = ((void*)0);
  struct frame_id old_fid;
  struct frame_info *fi;


  if (changelist == ((void*)0))
    return -1;


  if ((*varp)->root->rootvar != *varp)

    return -1;



  old_fid = get_frame_id (deprecated_selected_frame);






  type_changed = 1;
  new = value_of_root (varp, &type_changed);
  if (new == ((void*)0))
    {
      (*varp)->error = 1;
      return -1;
    }


  vpush (&result, ((void*)0));



  if (type_changed)
    {
      vpush (&result, *varp);
      changed++;
    }



  else if (type_changeable (*varp) &&
    ((*varp)->updated || !my_value_equal ((*varp)->value, new, &error2)))
    {
      vpush (&result, *varp);
      (*varp)->updated = 0;
      changed++;


      (*varp)->error = error2;
    }



  value_free ((*varp)->value);
  (*varp)->value = new;


  vpush (&stack, ((void*)0));


  if ((*varp)->children != ((void*)0))
    {
      struct varobj_child *c;
      for (c = (*varp)->children; c != ((void*)0); c = c->next)
 vpush (&stack, c->child);
    }


  v = vpop (&stack);
  while (v != ((void*)0))
    {

      if (v->children != ((void*)0))
 {
   struct varobj_child *c;
   for (c = v->children; c != ((void*)0); c = c->next)
     vpush (&stack, c->child);
 }


      new = value_of_child (v->parent, v->index);
      if (type_changeable (v) &&
          (v->updated || !my_value_equal (v->value, new, &error2)))
 {

   vpush (&result, v);
   v->updated = 0;
   changed++;
 }


      v->error = error2;


      if (v->value != ((void*)0))
 value_free (v->value);
      v->value = new;


      v = vpop (&stack);
    }




  *changelist = xmalloc ((changed + 1) * sizeof (struct varobj *));
  if (changed > 1)
    {
      templist = xmalloc ((changed + 1) * sizeof (struct varobj *));
      cv = templist;
    }
  else
    cv = *changelist;


  vleft = changed;
  *cv = vpop (&result);
  while ((*cv != ((void*)0)) && (vleft > 0))
    {
      vleft--;
      cv++;
      *cv = vpop (&result);
    }
  if (vleft)
    warning ("varobj_update: assertion failed - vleft <> 0");

  if (changed > 1)
    {

      for (i = 0; i < changed; i++)
 *(*changelist + i) = *(templist + changed - 1 - i);
      *(*changelist + changed) = ((void*)0);
    }


  fi = frame_find_by_id (old_fid);
  if (fi)
    select_frame (fi);

  if (type_changed)
    return -2;
  else
    return changed;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {char* name; int index; int error; char* obj_name; int type; int root; struct varobj* parent; int * value; } ;


 int CPLUS_FAKE_CHILD (struct varobj*) ;
 int install_variable (struct varobj*) ;
 struct varobj* new_variable () ;
 int save_child_in_parent (struct varobj*,struct varobj*) ;
 int type_of_child (struct varobj*) ;
 int * value_of_child (struct varobj*,int) ;
 int xasprintf (char**,char*,char*,char*) ;

__attribute__((used)) static struct varobj *
create_child (struct varobj *parent, int index, char *name)
{
  struct varobj *child;
  char *childs_name;

  child = new_variable ();


  child->name = name;
  child->index = index;
  child->value = value_of_child (parent, index);
  if ((!CPLUS_FAKE_CHILD (child) && child->value == ((void*)0)) || parent->error)
    child->error = 1;
  child->parent = parent;
  child->root = parent->root;
  xasprintf (&childs_name, "%s.%s", parent->obj_name, name);
  child->obj_name = childs_name;
  install_variable (child);


  save_child_in_parent (parent, child);


  child->type = type_of_child (child);

  return child;
}

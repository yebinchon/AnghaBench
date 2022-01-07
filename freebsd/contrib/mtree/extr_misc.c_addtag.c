
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; char** list; } ;
typedef TYPE_1__ slist_t ;


 int TAG_CHUNK ;
 int mtree_err (char*) ;
 scalar_t__ realloc (char**,int) ;

void
addtag(slist_t *list, char *elem)
{



 if ((list->count % 20) == 0) {
  char **new;

  new = (char **)realloc(list->list, (list->count + 20)
      * sizeof(char *));
  if (new == ((void*)0))
   mtree_err("memory allocation error");
  list->list = new;
 }
 list->list[list->count] = elem;
 list->count++;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int s; TYPE_5__* node; struct TYPE_11__* next; } ;
typedef TYPE_2__ strnodelist ;
struct TYPE_12__ {TYPE_1__* fnode; scalar_t__ head; struct TYPE_12__* next; } ;
typedef TYPE_3__ provnode ;
struct TYPE_13__ {struct TYPE_13__* next; int * entry; } ;
typedef TYPE_4__ f_reqnode ;
struct TYPE_14__ {int filename; } ;
struct TYPE_10__ {TYPE_4__* req_list; } ;
typedef int Hash_Entry ;


 int * Hash_CreateEntry (int ,int ,int*) ;
 TYPE_3__* Hash_GetValue (int *) ;
 TYPE_2__* bl_list ;
 TYPE_4__* emalloc (int) ;
 int free (TYPE_2__*) ;
 int * make_fake_provision (TYPE_5__*) ;
 int provide_hash ;
 int warnx (char*,int ,int ) ;

__attribute__((used)) static void
insert_before(void)
{
 Hash_Entry *entry, *fake_prov_entry;
 provnode *pnode;
 f_reqnode *rnode;
 strnodelist *bl;
 int new;

 while (bl_list != ((void*)0)) {
  bl = bl_list->next;

  fake_prov_entry = make_fake_provision(bl_list->node);

  entry = Hash_CreateEntry(provide_hash, bl_list->s, &new);
  if (new == 1)
   warnx("file `%s' is before unknown provision `%s'", bl_list->node->filename, bl_list->s);

  for (pnode = Hash_GetValue(entry); pnode; pnode = pnode->next) {
   if (pnode->head)
    continue;

   rnode = emalloc(sizeof(*rnode));
   rnode->entry = fake_prov_entry;
   rnode->next = pnode->fnode->req_list;
   pnode->fnode->req_list = rnode;
  }

  free(bl_list);
  bl_list = bl;
 }
}

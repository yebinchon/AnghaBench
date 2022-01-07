
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* last; struct TYPE_7__* next; TYPE_2__* fnode; void* in_progress; void* head; } ;
typedef TYPE_1__ provnode ;
struct TYPE_8__ {TYPE_3__* prov_list; int filename; } ;
typedef TYPE_2__ filenode ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* pnode; } ;
typedef TYPE_3__ f_provnode ;
typedef int Hash_Entry ;


 int * Hash_CreateEntry (int ,char*,int*) ;
 TYPE_1__* Hash_GetValue (int *) ;
 int Hash_SetValue (int *,TYPE_1__*) ;
 void* RESET ;
 void* SET ;
 void* emalloc (int) ;
 int provide_hash ;
 int warnx (char*,int ,...) ;

__attribute__((used)) static void
add_provide(filenode *fnode, char *s)
{
 Hash_Entry *entry;
 f_provnode *f_pnode;
 provnode *pnode, *head;
 int new;

 entry = Hash_CreateEntry(provide_hash, s, &new);
 head = Hash_GetValue(entry);


 if (head == ((void*)0)) {
  head = emalloc(sizeof(*head));
  head->head = SET;
  head->in_progress = RESET;
  head->fnode = ((void*)0);
  head->last = head->next = ((void*)0);
  Hash_SetValue(entry, head);
 }
 pnode = emalloc(sizeof(*pnode));
 pnode->head = RESET;
 pnode->in_progress = RESET;
 pnode->fnode = fnode;
 pnode->next = head->next;
 pnode->last = head;
 head->next = pnode;
 if (pnode->next != ((void*)0))
  pnode->next->last = pnode;

 f_pnode = emalloc(sizeof(*f_pnode));
 f_pnode->pnode = pnode;
 f_pnode->next = fnode->prov_list;
 fnode->prov_list = f_pnode;
}

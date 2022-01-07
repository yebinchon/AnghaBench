
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* last; struct TYPE_6__* next; TYPE_2__* fnode; void* in_progress; void* head; } ;
typedef TYPE_1__ provnode ;
struct TYPE_7__ {TYPE_3__* prov_list; } ;
typedef TYPE_2__ filenode ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* pnode; } ;
typedef TYPE_3__ f_provnode ;
typedef int Hash_Entry ;


 int * Hash_CreateEntry (int ,char*,int*) ;
 int Hash_SetValue (int *,TYPE_1__*) ;
 void* RESET ;
 void* SET ;
 void* emalloc (int) ;
 int provide_hash ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static Hash_Entry *
make_fake_provision(filenode *node)
{
 Hash_Entry *entry;
 f_provnode *f_pnode;
 provnode *head, *pnode;
 static int i = 0;
 int new;
 char buffer[30];

 do {
  snprintf(buffer, sizeof buffer, "fake_prov_%08d", i++);
  entry = Hash_CreateEntry(provide_hash, buffer, &new);
 } while (new == 0);
 head = emalloc(sizeof(*head));
 head->head = SET;
 head->in_progress = RESET;
 head->fnode = ((void*)0);
 head->last = head->next = ((void*)0);
 Hash_SetValue(entry, head);

 pnode = emalloc(sizeof(*pnode));
 pnode->head = RESET;
 pnode->in_progress = RESET;
 pnode->fnode = node;
 pnode->next = head->next;
 pnode->last = head;
 head->next = pnode;
 if (pnode->next != ((void*)0))
  pnode->next->last = pnode;

 f_pnode = emalloc(sizeof(*f_pnode));
 f_pnode->pnode = pnode;
 f_pnode->next = node->prov_list;
 node->prov_list = f_pnode;

 return (entry);
}

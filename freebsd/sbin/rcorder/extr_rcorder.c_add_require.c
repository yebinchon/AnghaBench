
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* req_list; } ;
typedef TYPE_1__ filenode ;
struct TYPE_6__ {struct TYPE_6__* next; int * entry; } ;
typedef TYPE_2__ f_reqnode ;
typedef int Hash_Entry ;


 int * Hash_CreateEntry (int ,char*,int*) ;
 int Hash_SetValue (int *,int *) ;
 TYPE_2__* emalloc (int) ;
 int provide_hash ;

__attribute__((used)) static void
add_require(filenode *fnode, char *s)
{
 Hash_Entry *entry;
 f_reqnode *rnode;
 int new;

 entry = Hash_CreateEntry(provide_hash, s, &new);
 if (new)
  Hash_SetValue(entry, ((void*)0));
 rnode = emalloc(sizeof(*rnode));
 rnode->entry = entry;
 rnode->next = fnode->req_list;
 fnode->req_list = rnode;
}

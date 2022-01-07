
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* last; int in_progress; int * keyword_list; int * prov_list; int * req_list; int filename; } ;
typedef TYPE_1__ filenode ;


 int RESET ;
 TYPE_1__* emalloc (int) ;
 int estrdup (char*) ;
 TYPE_1__* fn_head ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static filenode *
filenode_new(char *filename)
{
 filenode *temp;

 temp = emalloc(sizeof(*temp));
 memset(temp, 0, sizeof(*temp));
 temp->filename = estrdup(filename);
 temp->req_list = ((void*)0);
 temp->prov_list = ((void*)0);
 temp->keyword_list = ((void*)0);
 temp->in_progress = RESET;





 temp->next = fn_head->next;
 if (temp->next != ((void*)0))
  temp->next->last = temp;
 temp->last = fn_head;
 fn_head->next = temp;
 return (temp);
}

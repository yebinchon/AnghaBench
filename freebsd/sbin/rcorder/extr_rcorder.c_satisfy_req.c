
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ in_progress; TYPE_1__* next; } ;
typedef TYPE_2__ provnode ;
struct TYPE_8__ {int * entry; } ;
typedef TYPE_3__ f_reqnode ;
struct TYPE_6__ {int fnode; } ;
typedef int Hash_Entry ;


 int Hash_GetKey (int *) ;
 TYPE_2__* Hash_GetValue (int *) ;
 scalar_t__ SET ;
 int do_file (int ) ;
 int exit_code ;
 int warnx (char*,int ,char*) ;

__attribute__((used)) static void
satisfy_req(f_reqnode *rnode, char *filename)
{
 Hash_Entry *entry;
 provnode *head;

 entry = rnode->entry;
 head = Hash_GetValue(entry);

 if (head == ((void*)0)) {
  warnx("requirement `%s' in file `%s' has no providers.",
      Hash_GetKey(entry), filename);
  exit_code = 1;
  return;
 }


 if (head->next == ((void*)0))
  return;





 if (head->in_progress == SET) {
  warnx("Circular dependency on provision `%s' in file `%s'.",
      Hash_GetKey(entry), filename);
  exit_code = 1;
  return;
 }

 head->in_progress = SET;





 while (head->next != ((void*)0))
  do_file(head->next->fnode);
}

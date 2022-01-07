
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dosDirEntry {struct dosDirEntry* parent; struct dosDirEntry* next; struct dosDirEntry* child; } ;
struct dirTodoNode {struct dirTodoNode* next; } ;


 int * buffer ;
 int * delbuf ;
 int free (int *) ;
 int freeDirTodo (struct dirTodoNode*) ;
 int freeDosDirEntry (struct dosDirEntry*) ;
 int * lostDir ;
 struct dirTodoNode* pendingDirectories ;
 struct dosDirEntry* rootDir ;

void
finishDosDirSection(void)
{
 struct dirTodoNode *p, *np;
 struct dosDirEntry *d, *nd;

 for (p = pendingDirectories; p; p = np) {
  np = p->next;
  freeDirTodo(p);
 }
 pendingDirectories = ((void*)0);
 for (d = rootDir; d; d = nd) {
  if ((nd = d->child) != ((void*)0)) {
   d->child = 0;
   continue;
  }
  if (!(nd = d->next))
   nd = d->parent;
  freeDosDirEntry(d);
 }
 rootDir = lostDir = ((void*)0);
 free(buffer);
 free(delbuf);
 buffer = ((void*)0);
 delbuf = ((void*)0);
}

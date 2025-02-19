
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fatEntry {int dummy; } ;
struct dosDirEntry {int dummy; } ;
struct dirTodoNode {struct dirTodoNode* next; struct dosDirEntry* dir; } ;
struct bootblock {int dummy; } ;


 int FSFATAL ;
 int freeDirTodo (struct dirTodoNode*) ;
 struct dirTodoNode* pendingDirectories ;
 int readDosDirSection (int,struct bootblock*,struct fatEntry*,struct dosDirEntry*) ;
 struct dosDirEntry* rootDir ;

int
handleDirTree(int dosfs, struct bootblock *boot, struct fatEntry *fat)
{
 int mod;

 mod = readDosDirSection(dosfs, boot, fat, rootDir);
 if (mod & FSFATAL)
  return FSFATAL;




 while (pendingDirectories) {
  struct dosDirEntry *dir = pendingDirectories->dir;
  struct dirTodoNode *n = pendingDirectories->next;





  freeDirTodo(pendingDirectories);
  pendingDirectories = n;




  mod |= readDosDirSection(dosfs, boot, fat, dir);
  if (mod & FSFATAL)
   return FSFATAL;
 }

 return mod;
}

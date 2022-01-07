
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirTodoNode {struct dirTodoNode* next; } ;


 struct dirTodoNode* freedt ;
 struct dirTodoNode* malloc (int) ;

__attribute__((used)) static struct dirTodoNode *
newDirTodo(void)
{
 struct dirTodoNode *dt;

 if (!(dt = freedt)) {
  if (!(dt = malloc(sizeof *dt)))
   return 0;
 } else
  freedt = dt->next;
 return dt;
}

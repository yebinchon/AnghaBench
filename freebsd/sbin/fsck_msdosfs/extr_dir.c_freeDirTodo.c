
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirTodoNode {struct dirTodoNode* next; } ;


 struct dirTodoNode* freedt ;

__attribute__((used)) static void
freeDirTodo(struct dirTodoNode *dt)
{
 dt->next = freedt;
 freedt = dt;
}

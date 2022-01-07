
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int name; } ;
typedef TYPE_1__ NODE ;


 int F_DIR ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
nodecmp(const NODE *a, const NODE *b)
{

 if ((a->type & F_DIR) != 0) {
  if ((b->type & F_DIR) == 0)
   return 1;
 } else if ((b->type & F_DIR) != 0)
  return -1;
 return strcmp(a->name, b->name);
}

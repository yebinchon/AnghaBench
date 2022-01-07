
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* s; } ;
struct tree {TYPE_1__ path; } ;



__attribute__((used)) static const char *
tree_current_path(struct tree *t)
{
 return (t->path.s);
}

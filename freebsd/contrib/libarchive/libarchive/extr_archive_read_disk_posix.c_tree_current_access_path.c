
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {char const* basename; } ;



__attribute__((used)) static const char *
tree_current_access_path(struct tree *t)
{
 return (t->basename);
}

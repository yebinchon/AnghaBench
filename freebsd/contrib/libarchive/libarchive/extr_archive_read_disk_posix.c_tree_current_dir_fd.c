
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int working_dir_fd; } ;



__attribute__((used)) static int
tree_current_dir_fd(struct tree *t)
{
 return (t->working_dir_fd);
}

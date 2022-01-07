
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int initial_symlink_mode; int path; } ;


 int archive_string_ensure (int *,int) ;
 int archive_string_init (int *) ;
 struct tree* calloc (int,int) ;
 struct tree* tree_reopen (struct tree*,char const*,int) ;

__attribute__((used)) static struct tree *
tree_open(const char *path, int symlink_mode, int restore_time)
{
 struct tree *t;

 if ((t = calloc(1, sizeof(*t))) == ((void*)0))
  return (((void*)0));
 archive_string_init(&t->path);
 archive_string_ensure(&t->path, 31);
 t->initial_symlink_mode = symlink_mode;
 return (tree_reopen(t, path, restore_time));
}

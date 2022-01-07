
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {char* name; struct cmd* parent; } ;


 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
print_tree(const struct cmd *f)
{

 if (f->parent != ((void*)0))
  print_tree(f->parent);
 if (f->name != ((void*)0))
  fprintf(stderr, " %s", f->name);
}

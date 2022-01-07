
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {char* name; char* descr; int parent; } ;


 int fprintf (int ,char*,char*,...) ;
 char* getprogname () ;
 int print_tree (int ) ;
 int stderr ;

__attribute__((used)) static void
print_usage(const struct cmd *f)
{

 fprintf(stderr, "    %s", getprogname());
 print_tree(f->parent);
 fprintf(stderr, " %-15s - %s\n", f->name, f->descr);
}

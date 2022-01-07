
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int to_doc; int to_open; int to_shortname; int * to_xfer_partial; } ;


 int DEFAULT_ALLOCSIZE ;
 int add_cmd (int ,int ,int ,int ,int **) ;
 int add_prefix_cmd (char*,int ,int ,char*,int **,char*,int ,int *) ;
 int class_run ;
 int cmdlist ;
 int * default_xfer_partial ;
 int no_class ;
 int target_command ;
 int target_struct_allocsize ;
 int target_struct_size ;
 struct target_ops** target_structs ;
 int * targetlist ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

void
add_target (struct target_ops *t)
{

  if (t->to_xfer_partial == ((void*)0))
    t->to_xfer_partial = default_xfer_partial;

  if (!target_structs)
    {
      target_struct_allocsize = DEFAULT_ALLOCSIZE;
      target_structs = (struct target_ops **) xmalloc
 (target_struct_allocsize * sizeof (*target_structs));
    }
  if (target_struct_size >= target_struct_allocsize)
    {
      target_struct_allocsize *= 2;
      target_structs = (struct target_ops **)
 xrealloc ((char *) target_structs,
    target_struct_allocsize * sizeof (*target_structs));
    }
  target_structs[target_struct_size++] = t;

  if (targetlist == ((void*)0))
    add_prefix_cmd ("target", class_run, target_command,
      "Connect to a target machine or process.\nThe first argument is the type or protocol of the target machine.\nRemaining arguments are interpreted by the target protocol.  For more\ninformation on the arguments for a particular protocol, type\n`help target ' followed by the protocol name.",




      &targetlist, "target ", 0, &cmdlist);
  add_cmd (t->to_shortname, no_class, t->to_open, t->to_doc, &targetlist);
}

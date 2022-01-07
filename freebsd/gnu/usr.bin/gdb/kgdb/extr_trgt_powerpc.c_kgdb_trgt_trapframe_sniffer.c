
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int find_pc_partial_function (int ,char**,int *,int *) ;
 int frame_pc_unwind (struct frame_info*) ;
 struct frame_unwind const kgdb_trgt_trapframe_unwind ;
 scalar_t__ strcmp (char*,char*) ;

const struct frame_unwind *
kgdb_trgt_trapframe_sniffer(struct frame_info *next_frame)
{
 char *pname;
 CORE_ADDR pc;

 pc = frame_pc_unwind(next_frame);
 pname = ((void*)0);
 find_pc_partial_function(pc, &pname, ((void*)0), ((void*)0));
 if (pname == ((void*)0))
  return (((void*)0));
 if (strcmp(pname, "asttrapexit") == 0 ||
     strcmp(pname, "trapexit") == 0)
  return (&kgdb_trgt_trapframe_unwind);

 return (((void*)0));
}

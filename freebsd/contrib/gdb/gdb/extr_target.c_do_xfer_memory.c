
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct target_ops {int (* to_xfer_memory ) (int ,char*,int,int,struct mem_attrib*,struct target_ops*) ;scalar_t__ to_has_all_memory; int to_has_memory; struct target_ops* beneath; } ;
struct section_table {int the_bfd_section; int bfd; } ;
struct mem_attrib {int dummy; } ;
struct TYPE_5__ {int (* to_xfer_memory ) (int ,char*,int,int,struct mem_attrib*,TYPE_1__*) ;} ;
typedef int CORE_ADDR ;


 int SEC_READONLY ;
 int bfd_get_section_flags (int ,int ) ;
 TYPE_1__ current_target ;
 scalar_t__ errno ;
 int stub1 (int ,char*,int,int,struct mem_attrib*,TYPE_1__*) ;
 int stub2 (int ,char*,int,int,struct mem_attrib*,struct target_ops*) ;
 struct section_table* target_section_by_addr (TYPE_1__*,int ) ;
 struct target_ops* target_stack ;
 scalar_t__ trust_readonly ;
 int xfer_memory (int ,char*,int,int ,struct mem_attrib*,TYPE_1__*) ;

int
do_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
  struct mem_attrib *attrib)
{
  int res;
  int done = 0;
  struct target_ops *t;


  if (len == 0)
    return 0;



  errno = 0;

  if (!write && trust_readonly)
    {
      struct section_table *secp;



      secp = target_section_by_addr (&current_target, memaddr);
      if (secp != ((void*)0)
   && (bfd_get_section_flags (secp->bfd, secp->the_bfd_section)
       & SEC_READONLY))
 return xfer_memory (memaddr, myaddr, len, 0, attrib, &current_target);
    }


  res = current_target.to_xfer_memory
    (memaddr, myaddr, len, write, attrib, &current_target);


  if (res <= 0)
    {
      for (t = target_stack; t != ((void*)0); t = t->beneath)
 {
   if (!t->to_has_memory)
     continue;

   res = t->to_xfer_memory (memaddr, myaddr, len, write, attrib, t);
   if (res > 0)
     break;
   if (t->to_has_all_memory)
     break;
 }

      if (res <= 0)
 return -1;
    }

  return res;
}

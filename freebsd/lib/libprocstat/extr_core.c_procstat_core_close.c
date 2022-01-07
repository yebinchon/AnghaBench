
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {scalar_t__ pc_magic; int pc_fd; int pc_elf; } ;


 scalar_t__ PROCSTAT_CORE_MAGIC ;
 int assert (int) ;
 int close (int ) ;
 int elf_end (int ) ;
 int free (struct procstat_core*) ;

void
procstat_core_close(struct procstat_core *core)
{

 assert(core->pc_magic == PROCSTAT_CORE_MAGIC);

 elf_end(core->pc_elf);
 close(core->pc_fd);
 free(core);
}

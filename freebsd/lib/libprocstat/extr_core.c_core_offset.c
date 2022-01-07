
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {scalar_t__ pc_magic; int pc_fd; } ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;


 scalar_t__ PROCSTAT_CORE_MAGIC ;
 int SEEK_SET ;
 int assert (int) ;
 int lseek (int ,scalar_t__,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static bool
core_offset(struct procstat_core *core, off_t offset)
{

 assert(core->pc_magic == PROCSTAT_CORE_MAGIC);

 if (lseek(core->pc_fd, offset, SEEK_SET) == -1) {
  warn("core: lseek(%jd)", (intmax_t)offset);
  return (0);
 }
 return (1);
}

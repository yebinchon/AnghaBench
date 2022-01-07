
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {scalar_t__ pc_magic; int pc_fd; } ;
typedef int ssize_t ;


 scalar_t__ PROCSTAT_CORE_MAGIC ;
 int assert (int) ;
 int read (int ,void*,size_t) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static bool
core_read(struct procstat_core *core, void *buf, size_t len)
{
 ssize_t n;

 assert(core->pc_magic == PROCSTAT_CORE_MAGIC);

 n = read(core->pc_fd, buf, len);
 if (n == -1) {
  warn("core: read");
  return (0);
 }
 if (n < (ssize_t)len) {
  warnx("core: short read");
  return (0);
 }
 return (1);
}

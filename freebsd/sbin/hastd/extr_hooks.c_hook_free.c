
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookproc {scalar_t__ hp_magic; scalar_t__ hp_pid; } ;


 scalar_t__ HOOKPROC_MAGIC_ALLOCATED ;
 int PJDLOG_ASSERT (int) ;
 int free (struct hookproc*) ;

__attribute__((used)) static void
hook_free(struct hookproc *hp)
{

 PJDLOG_ASSERT(hp->hp_magic == HOOKPROC_MAGIC_ALLOCATED);
 PJDLOG_ASSERT(hp->hp_pid > 0);

 hp->hp_magic = 0;
 free(hp);
}

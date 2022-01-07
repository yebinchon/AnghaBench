
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_command {unsigned int gc_flags; } ;


 unsigned int G_FLAG_VERBOSE ;
 scalar_t__ verbose ;

__attribute__((used)) static unsigned
set_flags(struct g_command *cmd)
{
 unsigned flags = 0;

 if ((cmd->gc_flags & G_FLAG_VERBOSE) != 0 && verbose)
  flags |= G_FLAG_VERBOSE;

 return (flags);
}

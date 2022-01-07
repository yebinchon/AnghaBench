
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_forwards {int dummy; } ;
struct config_file {int dummy; } ;


 int fatal_exit (char*) ;
 int forwards_apply_cfg (struct iter_forwards*,struct config_file*) ;
 struct iter_forwards* forwards_create () ;
 int forwards_delete (struct iter_forwards*) ;

__attribute__((used)) static void
check_fwd(struct config_file* cfg)
{
 struct iter_forwards* fwd = forwards_create();
 if(!fwd || !forwards_apply_cfg(fwd, cfg)) {
  fatal_exit("Could not set forward zones");
 }
 forwards_delete(fwd);
}

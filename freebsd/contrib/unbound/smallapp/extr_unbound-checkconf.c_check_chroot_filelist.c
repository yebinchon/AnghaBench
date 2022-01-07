
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {int dummy; } ;


 int check_chroot_string (char const*,int *,char const*,struct config_file*) ;

__attribute__((used)) static void
check_chroot_filelist(const char* desc, struct config_strlist* list,
 const char* chrootdir, struct config_file* cfg)
{
 struct config_strlist* p;
 for(p=list; p; p=p->next) {
  check_chroot_string(desc, &p->str, chrootdir, cfg);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {scalar_t__* chrootdir; } ;


 int strlen (scalar_t__*) ;
 scalar_t__ strncmp (char*,scalar_t__*,int ) ;

__attribute__((used)) static char *
dnsc_chroot_path(struct config_file *cfg, char *path)
{
    char *nm;
    nm = path;
    if(cfg->chrootdir && cfg->chrootdir[0] && strncmp(nm,
        cfg->chrootdir, strlen(cfg->chrootdir)) == 0)
        nm += strlen(cfg->chrootdir);
    return nm;
}

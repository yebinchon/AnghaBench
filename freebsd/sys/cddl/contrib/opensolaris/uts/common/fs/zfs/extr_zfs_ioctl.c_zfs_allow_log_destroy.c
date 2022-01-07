
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strfree (char*) ;

__attribute__((used)) static void
zfs_allow_log_destroy(void *arg)
{
 char *poolname = arg;
 strfree(poolname);
}

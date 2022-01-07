
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int PATH_BOOTABLE_TOKEN ;
 int PATH_DEFAULTS_LOADER_CONF ;
 int PATH_KERNEL ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static bool
sanity_check_currdev(void)
{
 struct stat st;

 return (stat(PATH_DEFAULTS_LOADER_CONF, &st) == 0 ||



     stat(PATH_KERNEL, &st) == 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int dummy; } ;


 int __mac_set_file (char const*,struct mac*) ;

int
mac_set_file(const char *path, struct mac *label)
{

 return (__mac_set_file(path, label));
}

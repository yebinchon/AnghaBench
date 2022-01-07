
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int dummy; } ;


 int __mac_get_proc (struct mac*) ;

int
mac_get_proc(struct mac *label)
{

 return (__mac_get_proc(label));
}

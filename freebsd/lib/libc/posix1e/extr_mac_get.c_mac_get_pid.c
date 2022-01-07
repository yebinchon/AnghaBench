
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int dummy; } ;
typedef int pid_t ;


 int __mac_get_pid (int ,struct mac*) ;

int
mac_get_pid(pid_t pid, struct mac *label)
{

 return (__mac_get_pid(pid, label));
}

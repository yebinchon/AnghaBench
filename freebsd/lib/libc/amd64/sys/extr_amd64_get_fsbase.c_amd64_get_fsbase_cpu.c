
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rdfsbase () ;

__attribute__((used)) static int
amd64_get_fsbase_cpu(void **addr)
{

 *addr = (void *)rdfsbase();
 return (0);
}

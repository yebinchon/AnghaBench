
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rdgsbase () ;

__attribute__((used)) static int
amd64_get_gsbase_cpu(void **addr)
{

 *addr = (void *)rdgsbase();
 return (0);
}

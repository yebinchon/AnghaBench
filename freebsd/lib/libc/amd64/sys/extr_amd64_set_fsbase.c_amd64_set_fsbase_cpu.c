
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wrfsbase (uintptr_t) ;

__attribute__((used)) static int
amd64_set_fsbase_cpu(void *addr)
{

 wrfsbase((uintptr_t)addr);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VM_MAXCPU ;
 int new_unrhdr (scalar_t__,int,int *) ;
 int vpid_unr ;

__attribute__((used)) static void
vpid_init(void)
{
 vpid_unr = new_unrhdr(VM_MAXCPU + 1, 0xffff, ((void*)0));
}

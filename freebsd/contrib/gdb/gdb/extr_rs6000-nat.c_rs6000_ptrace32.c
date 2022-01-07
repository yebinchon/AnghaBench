
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int,unsigned int,int,unsigned int,int) ;
 int ptrace (int,int,int*,int,int*) ;

__attribute__((used)) static int
rs6000_ptrace32 (int req, int id, int *addr, int data, int *buf)
{
  int ret = ptrace (req, id, (int *)addr, data, buf);




  return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int,long long,int,unsigned int,int) ;
 int ptracex (int,int,long long,int,int*) ;

__attribute__((used)) static int
rs6000_ptrace64 (int req, int id, long long addr, int data, int *buf)
{



  int ret = 0;





  return ret;
}

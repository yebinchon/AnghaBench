
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int align_queue_size(int req)
{
 int nent;

 for (nent = 1; nent < req; nent <<= 1)
  ;

 return nent;
}

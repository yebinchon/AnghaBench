
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IB_MAD_SIZE ;
 void* umad_alloc (int,scalar_t__) ;
 scalar_t__ umad_size () ;

void *mad_alloc(void)
{
 return umad_alloc(1, umad_size() + IB_MAD_SIZE);
}

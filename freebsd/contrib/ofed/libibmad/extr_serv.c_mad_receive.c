
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ibmp ;
 void* mad_receive_via (void*,int,int ) ;

void *mad_receive(void *umad, int timeout)
{
 return mad_receive_via(umad, timeout, ibmp);
}

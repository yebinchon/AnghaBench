
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmad_port {int port_id; } ;


 int DEBUG (char*,int ) ;
 int IB_MAD_SIZE ;
 int errno ;
 int mad_get_timeout (struct ibmad_port*,int) ;
 int strerror (int ) ;
 void* umad_alloc (int,scalar_t__) ;
 int umad_free (void*) ;
 int umad_recv (int ,void*,int*,int ) ;
 scalar_t__ umad_size () ;

void *mad_receive_via(void *umad, int timeout, struct ibmad_port *srcport)
{
 void *mad = umad ? umad : umad_alloc(1, umad_size() + IB_MAD_SIZE);
 int agent;
 int length = IB_MAD_SIZE;

 if ((agent = umad_recv(srcport->port_id, mad, &length,
          mad_get_timeout(srcport, timeout))) < 0) {
  if (!umad)
   umad_free(mad);
  DEBUG("recv failed: %s", strerror(errno));
  return 0;
 }

 return mad;
}

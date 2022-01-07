
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qp; scalar_t__ qkey; int lid; } ;
struct sa_handle {int fd; int agent; TYPE_1__ dport; } ;


 int IBPANIC (char*) ;
 int IBWARN (char*,char*,int ) ;
 scalar_t__ IB_DEFAULT_QP1_QKEY ;
 int IB_SA_CLASS ;
 struct sa_handle* calloc (int,int) ;
 int free (struct sa_handle*) ;
 char* ibd_ca ;
 int ibd_ca_port ;
 int resolve_sm_portid (char*,int ,TYPE_1__*) ;
 int umad_open_port (char*,int ) ;
 int umad_register (int ,int ,int,int,int *) ;

struct sa_handle * sa_get_handle(void)
{
 struct sa_handle * handle;
 handle = calloc(1, sizeof(*handle));
 if (!handle)
  IBPANIC("calloc failed");

 resolve_sm_portid(ibd_ca, ibd_ca_port, &handle->dport);
 if (!handle->dport.lid) {
  IBWARN("No SM/SA found on port %s:%d",
   ibd_ca ? "" : ibd_ca,
   ibd_ca_port);
  free(handle);
  return (((void*)0));
 }

 handle->dport.qp = 1;
 if (!handle->dport.qkey)
  handle->dport.qkey = IB_DEFAULT_QP1_QKEY;

 handle->fd = umad_open_port(ibd_ca, ibd_ca_port);
 handle->agent = umad_register(handle->fd, IB_SA_CLASS, 2, 1, ((void*)0));

 return handle;
}

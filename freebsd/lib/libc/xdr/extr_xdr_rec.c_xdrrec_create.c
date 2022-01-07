
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
struct TYPE_5__ {TYPE_2__* x_private; int * x_ops; } ;
typedef TYPE_1__ XDR ;
struct TYPE_6__ {int sendsize; int recvsize; int (* readit ) (void*,void*,int) ;int (* writeit ) (void*,void*,int) ;int in_size; char* in_hdrp; scalar_t__ in_received; scalar_t__ in_reclen; void* nonblock; int in_header; scalar_t__ in_hdrlen; void* in_haveheader; int last_frag; scalar_t__ fbtbc; int * in_boundry; scalar_t__ in_finger; int * in_base; void* frag_sent; struct TYPE_6__* out_boundry; struct TYPE_6__* out_finger; struct TYPE_6__* out_base; int * frag_header; void* tcp_handle; } ;
typedef TYPE_2__ RECSTREAM ;


 void* FALSE ;
 int TRUE ;
 int fix_buf_size (int) ;
 void* mem_alloc (int) ;
 int mem_free (TYPE_2__*,int) ;
 int warnx (char*) ;
 int xdrrec_ops ;

void
xdrrec_create(XDR *xdrs, u_int sendsize, u_int recvsize, void *tcp_handle,
    int (*readit)(void *, void *, int), int (*writeit)(void *, void *, int))
{
 RECSTREAM *rstrm = mem_alloc(sizeof(RECSTREAM));

 if (rstrm == ((void*)0)) {
  warnx("xdrrec_create: out of memory");




  return;
 }
 rstrm->sendsize = sendsize = fix_buf_size(sendsize);
 rstrm->out_base = mem_alloc(rstrm->sendsize);
 if (rstrm->out_base == ((void*)0)) {
  warnx("xdrrec_create: out of memory");
  mem_free(rstrm, sizeof(RECSTREAM));
  return;
 }
 rstrm->recvsize = recvsize = fix_buf_size(recvsize);
 rstrm->in_base = mem_alloc(recvsize);
 if (rstrm->in_base == ((void*)0)) {
  warnx("xdrrec_create: out of memory");
  mem_free(rstrm->out_base, sendsize);
  mem_free(rstrm, sizeof(RECSTREAM));
  return;
 }



 xdrs->x_ops = &xdrrec_ops;
 xdrs->x_private = rstrm;
 rstrm->tcp_handle = tcp_handle;
 rstrm->readit = readit;
 rstrm->writeit = writeit;
 rstrm->out_finger = rstrm->out_boundry = rstrm->out_base;
 rstrm->frag_header = (u_int32_t *)(void *)rstrm->out_base;
 rstrm->out_finger += sizeof(u_int32_t);
 rstrm->out_boundry += sendsize;
 rstrm->frag_sent = FALSE;
 rstrm->in_size = recvsize;
 rstrm->in_boundry = rstrm->in_base;
 rstrm->in_finger = (rstrm->in_boundry += recvsize);
 rstrm->fbtbc = 0;
 rstrm->last_frag = TRUE;
 rstrm->in_haveheader = FALSE;
 rstrm->in_hdrlen = 0;
 rstrm->in_hdrp = (char *)(void *)&rstrm->in_header;
 rstrm->nonblock = FALSE;
 rstrm->in_reclen = 0;
 rstrm->in_received = 0;
}

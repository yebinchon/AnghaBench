
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct imsgbuf {int w; } ;
struct imsg_hdr {scalar_t__ len; int flags; } ;
struct ibuf {int fd; scalar_t__ wpos; scalar_t__ buf; } ;


 int IMSGF_HASFD ;
 int ibuf_close (int *,struct ibuf*) ;

void
imsg_close(struct imsgbuf *ibuf, struct ibuf *msg)
{
 struct imsg_hdr *hdr;

 hdr = (struct imsg_hdr *)msg->buf;

 hdr->flags &= ~IMSGF_HASFD;
 if (msg->fd != -1)
  hdr->flags |= IMSGF_HASFD;

 hdr->len = (u_int16_t)msg->wpos;

 ibuf_close(&ibuf->w, msg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t wpos; scalar_t__ buf; scalar_t__ rptr; } ;
struct imsgbuf {TYPE_1__ r; } ;
struct TYPE_5__ {size_t len; int flags; } ;
struct imsg {int fd; TYPE_2__ hdr; TYPE_2__* data; } ;
typedef int ssize_t ;


 int ERANGE ;
 int IMSGF_HASFD ;
 size_t IMSG_HEADER_SIZE ;
 size_t MAX_IMSGSIZE ;
 int errno ;
 int imsg_get_fd (struct imsgbuf*) ;
 TYPE_2__* malloc (size_t) ;
 int memcpy (TYPE_2__*,scalar_t__,size_t) ;
 int memmove (scalar_t__*,scalar_t__,size_t) ;

ssize_t
imsg_get(struct imsgbuf *ibuf, struct imsg *imsg)
{
 size_t av, left, datalen;

 av = ibuf->r.wpos;

 if (IMSG_HEADER_SIZE > av)
  return (0);

 memcpy(&imsg->hdr, ibuf->r.buf, sizeof(imsg->hdr));
 if (imsg->hdr.len < IMSG_HEADER_SIZE ||
     imsg->hdr.len > MAX_IMSGSIZE) {
  errno = ERANGE;
  return (-1);
 }
 if (imsg->hdr.len > av)
  return (0);
 datalen = imsg->hdr.len - IMSG_HEADER_SIZE;
 ibuf->r.rptr = ibuf->r.buf + IMSG_HEADER_SIZE;
 if (datalen == 0)
  imsg->data = ((void*)0);
 else if ((imsg->data = malloc(datalen)) == ((void*)0))
  return (-1);

 if (imsg->hdr.flags & IMSGF_HASFD)
  imsg->fd = imsg_get_fd(ibuf);
 else
  imsg->fd = -1;

 memcpy(imsg->data, ibuf->r.rptr, datalen);

 if (imsg->hdr.len < av) {
  left = av - imsg->hdr.len;
  memmove(&ibuf->r.buf, ibuf->r.buf + imsg->hdr.len, left);
  ibuf->r.wpos = left;
 } else
  ibuf->r.wpos = 0;

 return (datalen + IMSG_HEADER_SIZE);
}

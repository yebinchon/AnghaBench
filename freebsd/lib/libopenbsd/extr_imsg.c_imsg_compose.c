
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct imsgbuf {int dummy; } ;
struct ibuf {int fd; } ;
typedef int pid_t ;


 int imsg_add (struct ibuf*,void const*,int ) ;
 int imsg_close (struct imsgbuf*,struct ibuf*) ;
 struct ibuf* imsg_create (struct imsgbuf*,int ,int ,int ,int ) ;

int
imsg_compose(struct imsgbuf *ibuf, u_int32_t type, u_int32_t peerid,
    pid_t pid, int fd, const void *data, u_int16_t datalen)
{
 struct ibuf *wbuf;

 if ((wbuf = imsg_create(ibuf, type, peerid, pid, datalen)) == ((void*)0))
  return (-1);

 if (imsg_add(wbuf, data, datalen) == -1)
  return (-1);

 wbuf->fd = fd;

 imsg_close(ibuf, wbuf);

 return (1);
}

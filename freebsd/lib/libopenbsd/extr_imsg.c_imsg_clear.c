
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imsgbuf {int w; } ;


 int close (int) ;
 int imsg_get_fd (struct imsgbuf*) ;
 int msgbuf_clear (int *) ;

void
imsg_clear(struct imsgbuf *ibuf)
{
 int fd;

 msgbuf_clear(&ibuf->w);
 while ((fd = imsg_get_fd(ibuf)) != -1)
  close(fd);
}

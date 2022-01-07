
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ibuf {int dummy; } ;


 int ibuf_add (struct ibuf*,void const*,int) ;
 int ibuf_free (struct ibuf*) ;

int
imsg_add(struct ibuf *msg, const void *data, u_int16_t datalen)
{
 if (datalen)
  if (ibuf_add(msg, data, datalen) == -1) {
   ibuf_free(msg);
   return (-1);
  }
 return (datalen);
}

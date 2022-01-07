
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int ENOMEM ;
 int ERR (int ) ;
 struct sockaddr* malloc (int ) ;
 int memcpy (struct sockaddr*,struct sockaddr*,int ) ;

__attribute__((used)) static int ucma_copy_addr(struct sockaddr **dst, socklen_t *dst_len,
     struct sockaddr *src, socklen_t src_len)
{
 *dst = malloc(src_len);
 if (!(*dst))
  return ERR(ENOMEM);

 memcpy(*dst, src, src_len);
 *dst_len = src_len;
 return 0;
}

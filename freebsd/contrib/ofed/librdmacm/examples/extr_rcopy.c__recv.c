
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t rrecv (int,char*,size_t,int ) ;

__attribute__((used)) static size_t _recv(int rs, char *msg, size_t len)
{
 size_t ret, offset;

 for (offset = 0; offset < len; offset += ret) {
  ret = rrecv(rs, msg + offset, len - offset, 0);
  if (ret <= 0)
   return ret;
 }

 return len;
}

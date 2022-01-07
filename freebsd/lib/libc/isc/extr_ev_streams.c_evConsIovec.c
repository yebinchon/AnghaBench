
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; void* iov_base; } ;


 int memset (struct iovec*,int,int) ;

struct iovec
evConsIovec(void *buf, size_t cnt) {
 struct iovec ret;

 memset(&ret, 0xf5, sizeof ret);
 ret.iov_base = buf;
 ret.iov_len = cnt;
 return (ret);
}

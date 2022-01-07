
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iovec {scalar_t__ iov_len; } ;
struct TYPE_3__ {int iovOrigCount; int iovCurCount; scalar_t__ ioDone; struct iovec* iovOrig; struct iovec* iovCur; scalar_t__ ioTotal; } ;
typedef TYPE_1__ evStream ;


 int ENOMEM ;
 int errno ;
 scalar_t__ memget (int) ;

__attribute__((used)) static int
copyvec(evStream *str, const struct iovec *iov, int iocnt) {
 int i;

 str->iovOrig = (struct iovec *)memget(sizeof(struct iovec) * iocnt);
 if (str->iovOrig == ((void*)0)) {
  errno = ENOMEM;
  return (-1);
 }
 str->ioTotal = 0;
 for (i = 0; i < iocnt; i++) {
  str->iovOrig[i] = iov[i];
  str->ioTotal += iov[i].iov_len;
 }
 str->iovOrigCount = iocnt;
 str->iovCur = str->iovOrig;
 str->iovCurCount = str->iovOrigCount;
 str->ioDone = 0;
 return (0);
}

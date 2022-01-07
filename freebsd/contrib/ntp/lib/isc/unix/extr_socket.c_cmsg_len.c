
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmsghdr {int dummy; } ;
typedef scalar_t__ ISC_SOCKADDR_LEN_T ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_LEN (scalar_t__) ;

__attribute__((used)) static inline ISC_SOCKADDR_LEN_T
cmsg_len(ISC_SOCKADDR_LEN_T len) {



 ISC_SOCKADDR_LEN_T hdrlen;





 hdrlen = (ISC_SOCKADDR_LEN_T)CMSG_DATA(((struct cmsghdr *)((void*)0)));
 return (hdrlen + len);

}

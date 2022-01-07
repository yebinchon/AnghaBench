
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ pcap_t ;
typedef int dummy ;


 scalar_t__ ENOENT ;
 scalar_t__ ENONET ;
 int SOL_SOCKET ;
 int SO_DETACH_FILTER ;
 scalar_t__ errno ;
 int setsockopt (int ,int ,int ,int*,int) ;

__attribute__((used)) static int
reset_kernel_filter(pcap_t *handle)
{
 int ret;






 int dummy = 0;

 ret = setsockopt(handle->fd, SOL_SOCKET, SO_DETACH_FILTER,
       &dummy, sizeof(dummy));







 if (ret == -1 && errno != ENOENT && errno != ENONET)
  return -1;
 return 0;
}

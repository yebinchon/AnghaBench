
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int IPPROTO_TCP ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int acm_lock ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int htobe16 (int ) ;
 int htobe32 (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int server_port ;
 int sock ;
 int socket (int ,int,int ) ;
 int ucma_set_server_port () ;

void ucma_ib_init(void)
{
 struct sockaddr_in addr;
 static int init;
 int ret;

 if (init)
  return;

 pthread_mutex_lock(&acm_lock);
 if (init)
  goto unlock;

 if (!ucma_set_server_port())
  goto out;

 sock = socket(AF_INET, SOCK_STREAM | SOCK_CLOEXEC, IPPROTO_TCP);
 if (sock < 0)
  goto out;

 memset(&addr, 0, sizeof addr);
 addr.sin_family = AF_INET;
 addr.sin_addr.s_addr = htobe32(INADDR_LOOPBACK);
 addr.sin_port = htobe16(server_port);
 ret = connect(sock, (struct sockaddr *) &addr, sizeof(addr));
 if (ret) {
  close(sock);
  sock = -1;
 }
out:
 init = 1;
unlock:
 pthread_mutex_unlock(&acm_lock);
}

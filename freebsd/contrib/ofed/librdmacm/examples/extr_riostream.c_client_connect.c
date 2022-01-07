
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addrinfo {int ai_dst_len; int ai_dst_addr; int ai_family; } ;
struct pollfd {int events; void* fd; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_family; } ;
typedef int socklen_t ;


 int EINPROGRESS ;
 int POLLOUT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int ai_hints ;
 int do_poll (struct pollfd*,int ) ;
 int dst_addr ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int ,int ,int *,struct addrinfo**) ;
 int perror (char*) ;
 int poll_timeout ;
 int port ;
 int printf (char*,char*) ;
 int rai_hints ;
 int rclose (void*) ;
 int rconnect (void*,int ,int ) ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 int rdma_getaddrinfo (int ,int ,int *,struct rdma_addrinfo**) ;
 int rgetsockopt (void*,int ,int ,int*,int*) ;
 void* rs ;
 void* rsocket (int ,int ,int ) ;
 int set_options (void*) ;
 scalar_t__ use_rgai ;

__attribute__((used)) static int client_connect(void)
{
 struct rdma_addrinfo *rai = ((void*)0);
 struct addrinfo *ai;
 struct pollfd fds;
 int ret, err;
 socklen_t len;

 ret = use_rgai ? rdma_getaddrinfo(dst_addr, port, &rai_hints, &rai) :
    getaddrinfo(dst_addr, port, &ai_hints, &ai);
 if (ret) {
  printf("getaddrinfo: %s\n", gai_strerror(ret));
  return ret;
 }

 rs = rai ? rsocket(rai->ai_family, SOCK_STREAM, 0) :
     rsocket(ai->ai_family, SOCK_STREAM, 0);
 if (rs < 0) {
  perror("rsocket");
  ret = rs;
  goto free;
 }

 set_options(rs);


 ret = rai ? rconnect(rs, rai->ai_dst_addr, rai->ai_dst_len) :
      rconnect(rs, ai->ai_addr, ai->ai_addrlen);
 if (ret && (errno != EINPROGRESS)) {
  perror("rconnect");
  goto close;
 }

 if (ret && (errno == EINPROGRESS)) {
  fds.fd = rs;
  fds.events = POLLOUT;
  ret = do_poll(&fds, poll_timeout);
  if (ret) {
   perror("rpoll");
   goto close;
  }

  len = sizeof err;
  ret = rgetsockopt(rs, SOL_SOCKET, SO_ERROR, &err, &len);
  if (ret)
   goto close;
  if (err) {
   ret = -1;
   errno = err;
   perror("async rconnect");
  }
 }

close:
 if (ret)
  rclose(rs);
free:
 if (rai)
  rdma_freeaddrinfo(rai);
 else
  freeaddrinfo(ai);
 return ret;
}

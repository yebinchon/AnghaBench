
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rdma_addrinfo {int ai_dst_len; int ai_dst_addr; int ai_route_len; scalar_t__ ai_route; int ai_src_len; int ai_src_addr; int ai_family; } ;
struct pollfd {int events; void* fd; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_family; } ;
typedef int socklen_t ;
struct TYPE_6__ {int ai_flags; } ;
struct TYPE_5__ {int ai_flags; } ;


 int AI_PASSIVE ;
 int EINPROGRESS ;
 int POLLOUT ;
 int RAI_PASSIVE ;
 int RDMA_ROUTE ;
 int SOCK_STREAM ;
 int SOL_RDMA ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 TYPE_3__ ai_hints ;
 int do_poll (struct pollfd*,int ) ;
 scalar_t__ dst_addr ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (scalar_t__,int ,TYPE_3__*,struct addrinfo**) ;
 int perror (char*) ;
 int poll_timeout ;
 int port ;
 int printf (char*,char*) ;
 TYPE_1__ rai_hints ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 int rdma_getaddrinfo (scalar_t__,int ,TYPE_1__*,struct rdma_addrinfo**) ;
 void* rs ;
 int rs_bind (void*,int ,int ) ;
 int rs_close (void*) ;
 int rs_connect (void*,int ,int ) ;
 int rs_getsockopt (void*,int ,int ,int*,int*) ;
 int rs_setsockopt (void*,int ,int ,scalar_t__,int ) ;
 void* rs_socket (int ,int ,int ) ;
 int set_options (void*) ;
 scalar_t__ src_addr ;
 scalar_t__ use_rgai ;

__attribute__((used)) static int client_connect(void)
{
 struct rdma_addrinfo *rai = ((void*)0), *rai_src = ((void*)0);
 struct addrinfo *ai, *ai_src;
 struct pollfd fds;
 int ret, err;
 socklen_t len;

 ret = use_rgai ? rdma_getaddrinfo(dst_addr, port, &rai_hints, &rai) :
    getaddrinfo(dst_addr, port, &ai_hints, &ai);

 if (ret) {
  printf("getaddrinfo: %s\n", gai_strerror(ret));
  return ret;
 }

 if (src_addr) {
  if (use_rgai) {
   rai_hints.ai_flags |= RAI_PASSIVE;
   ret = rdma_getaddrinfo(src_addr, port, &rai_hints, &rai_src);
  } else {
   ai_hints.ai_flags |= AI_PASSIVE;
   ret = getaddrinfo(src_addr, port, &ai_hints, &ai_src);
  }
  if (ret) {
   printf("getaddrinfo src_addr: %s\n", gai_strerror(ret));
   return ret;
  }
 }

 rs = rai ? rs_socket(rai->ai_family, SOCK_STREAM, 0) :
     rs_socket(ai->ai_family, SOCK_STREAM, 0);
 if (rs < 0) {
  perror("rsocket");
  ret = rs;
  goto free;
 }

 set_options(rs);

 if (src_addr) {
  ret = rai ? rs_bind(rs, rai_src->ai_src_addr, rai_src->ai_src_len) :
       rs_bind(rs, ai_src->ai_addr, ai_src->ai_addrlen);
  if (ret) {
   perror("rbind");
   goto close;
  }
 }

 if (rai && rai->ai_route) {
  ret = rs_setsockopt(rs, SOL_RDMA, RDMA_ROUTE, rai->ai_route,
        rai->ai_route_len);
  if (ret) {
   perror("rsetsockopt RDMA_ROUTE");
   goto close;
  }
 }

 ret = rai ? rs_connect(rs, rai->ai_dst_addr, rai->ai_dst_len) :
      rs_connect(rs, ai->ai_addr, ai->ai_addrlen);
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
  ret = rs_getsockopt(rs, SOL_SOCKET, SO_ERROR, &err, &len);
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
  rs_close(rs);
free:
 if (rai)
  rdma_freeaddrinfo(rai);
 else
  freeaddrinfo(ai);
 return ret;
}

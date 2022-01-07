
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDMA_INLINE ;
 int RDMA_RQSIZE ;
 int RDMA_SQSIZE ;
 int SOL_RDMA ;
 scalar_t__ rq_size ;
 int rsetsockopt (int,int ,int ,scalar_t__*,int) ;
 scalar_t__ sq_inline ;
 scalar_t__ sq_size ;

__attribute__((used)) static void set_rsocket_options(int rsocket)
{
 if (sq_size)
  rsetsockopt(rsocket, SOL_RDMA, RDMA_SQSIZE, &sq_size, sizeof sq_size);

 if (rq_size)
  rsetsockopt(rsocket, SOL_RDMA, RDMA_RQSIZE, &rq_size, sizeof rq_size);

 if (sq_inline)
  rsetsockopt(rsocket, SOL_RDMA, RDMA_INLINE, &sq_inline, sizeof sq_inline);
}

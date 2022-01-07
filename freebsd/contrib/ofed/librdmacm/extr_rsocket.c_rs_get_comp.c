
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct rsocket {int dummy; } ;


 scalar_t__ EWOULDBLOCK ;
 scalar_t__ errno ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ polling_time ;
 int rs_process_cq (struct rsocket*,int,int (*) (struct rsocket*)) ;

__attribute__((used)) static int rs_get_comp(struct rsocket *rs, int nonblock, int (*test)(struct rsocket *rs))
{
 struct timeval s, e;
 uint32_t poll_time = 0;
 int ret;

 do {
  ret = rs_process_cq(rs, 1, test);
  if (!ret || nonblock || errno != EWOULDBLOCK)
   return ret;

  if (!poll_time)
   gettimeofday(&s, ((void*)0));

  gettimeofday(&e, ((void*)0));
  poll_time = (e.tv_sec - s.tv_sec) * 1000000 +
       (e.tv_usec - s.tv_usec) + 1;
 } while (poll_time <= polling_time);

 ret = rs_process_cq(rs, 0, test);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dst_addr ;
 int end ;
 int gettimeofday (int *,int *) ;
 int iterations ;
 int recv_xfer (int ) ;
 int send_xfer (int ) ;
 int show_perf () ;
 int start ;
 int sync_test () ;
 int transfer_count ;
 int transfer_size ;

__attribute__((used)) static int run_test(void)
{
 int ret, i, t;

 ret = sync_test();
 if (ret)
  goto out;

 gettimeofday(&start, ((void*)0));
 for (i = 0; i < iterations; i++) {
  for (t = 0; t < transfer_count; t++) {
   ret = dst_addr ? send_xfer(transfer_size) :
      recv_xfer(transfer_size);
   if (ret)
    goto out;
  }

  for (t = 0; t < transfer_count; t++) {
   ret = dst_addr ? recv_xfer(transfer_size) :
      send_xfer(transfer_size);
   if (ret)
    goto out;
  }
 }
 gettimeofday(&end, ((void*)0));
 show_perf();
 ret = 0;

out:
 return ret;
}

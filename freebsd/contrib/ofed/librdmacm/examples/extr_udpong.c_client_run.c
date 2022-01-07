
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_CNT ;
 int client_connect () ;
 int custom ;
 int init_bandwidth_test (int ) ;
 int init_latency_test (int ) ;
 int printf (char*,char*,char*,char*,char*,char*,char*,char*) ;
 int rs ;
 int rs_close (int ) ;
 int run_test () ;
 int * test_size ;

__attribute__((used)) static int client_run(void)
{
 int i, ret;

 printf("%-10s%-8s%-8s%-8s%8s %10s%13s\n",
        "name", "bytes", "xfers", "total", "time", "Gb/sec", "usec/xfer");

 ret = client_connect();
 if (ret)
  return ret;

 if (!custom) {
  for (i = 0; i < TEST_CNT; i++) {
   init_latency_test(test_size[i]);
   run_test();
  }
  for (i = 0; i < TEST_CNT; i++) {
   init_bandwidth_test(test_size[i]);
   run_test();
  }
 } else {
  run_test();
 }
 rs_close(rs);

 return ret;
}

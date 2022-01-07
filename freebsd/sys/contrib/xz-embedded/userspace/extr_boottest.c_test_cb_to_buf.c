
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decompress (int ,int ,int *,int *,int ,int*,int *) ;
 int error ;
 int fill ;
 int fprintf (int ,char*,int,int) ;
 int in ;
 int out ;
 int stderr ;

__attribute__((used)) static void test_cb_to_buf(void)
{
 int in_used;
 int ret;
 ret = decompress(in, 0, &fill, ((void*)0), out, &in_used, &error);

 fprintf(stderr, "ret = %d; in_used = %d\n", ret, in_used);
}

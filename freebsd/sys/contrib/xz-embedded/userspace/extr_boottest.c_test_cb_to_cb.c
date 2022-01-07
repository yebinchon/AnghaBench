
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decompress (int *,int ,int *,int *,int *,int *,int *) ;
 int error ;
 int fill ;
 int flush ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void test_cb_to_cb(void)
{
 int ret;
 ret = decompress(((void*)0), 0, &fill, &flush, ((void*)0), ((void*)0), &error);
 fprintf(stderr, "ret = %d\n", ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iterations ;
 int size_str (char*,int,int) ;
 int size_to_count (int) ;
 int snprintf (int ,int,char*,char*) ;
 int test_name ;
 int transfer_count ;
 int transfer_size ;

__attribute__((used)) static void init_latency_test(int size)
{
 char sstr[5];

 size_str(sstr, sizeof sstr, size);
 snprintf(test_name, sizeof test_name, "%s_lat", sstr);
 transfer_count = 1;
 transfer_size = size;
 iterations = size_to_count(transfer_size);
}

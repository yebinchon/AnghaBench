
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;


 int cnt_str (char*,int,float) ;
 TYPE_2__ end ;
 float iterations ;
 int printf (char*,...) ;
 int size_str (char*,int,long long) ;
 TYPE_1__ start ;
 char* test_name ;
 long long transfer_count ;
 long long transfer_size ;

__attribute__((used)) static void show_perf(void)
{
 char str[32];
 float usec;
 long long bytes;

 usec = (end.tv_sec - start.tv_sec) * 1000000 + (end.tv_usec - start.tv_usec);
 bytes = (long long) iterations * transfer_count * transfer_size * 2;


 printf("%-10s", test_name);
 size_str(str, sizeof str, transfer_size);
 printf("%-8s", str);
 cnt_str(str, sizeof str, transfer_count);
 printf("%-8s", str);
 cnt_str(str, sizeof str, iterations);
 printf("%-8s", str);
 size_str(str, sizeof str, bytes);
 printf("%-8s", str);
 printf("%8.2fs%10.2f%11.2f\n",
  usec / 1000000., (bytes * 8) / (1000. * usec),
  (usec / iterations) / (transfer_count * 2));
}

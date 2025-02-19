
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tv_sec; int tv_usec; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;


 int be32toh (int ) ;
 int cnt_str (char*,int,int) ;
 scalar_t__ echo ;
 TYPE_3__ end ;
 TYPE_2__ g_msg ;
 int printf (char*,...) ;
 int size_str (char*,int,long long) ;
 TYPE_1__ start ;
 char* test_name ;
 int transfer_count ;
 long long transfer_size ;

__attribute__((used)) static void show_perf(void)
{
 char str[32];
 float usec;
 long long bytes;
 int transfers;

 usec = (end.tv_sec - start.tv_sec) * 1000000 + (end.tv_usec - start.tv_usec);
 transfers = echo ? transfer_count * 2 : be32toh(g_msg.data);
 bytes = (long long) transfers * transfer_size;


 printf("%-10s", test_name);
 size_str(str, sizeof str, transfer_size);
 printf("%-8s", str);
 cnt_str(str, sizeof str, transfers);
 printf("%-8s", str);
 size_str(str, sizeof str, bytes);
 printf("%-8s", str);
 printf("%8.2fs%10.2f%11.2f\n",
  usec / 1000000., (bytes * 8) / (1000. * usec),
  (usec / transfers));
}

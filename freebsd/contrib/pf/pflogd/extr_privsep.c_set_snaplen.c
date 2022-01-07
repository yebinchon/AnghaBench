
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int snapshot; } ;


 TYPE_1__* hpcap ;
 int set_pcap_filter () ;

__attribute__((used)) static int
set_snaplen(int snap)
{
 if (hpcap == ((void*)0))
  return (1);

 hpcap->snapshot = snap;
 set_pcap_filter();

 return 0;
}

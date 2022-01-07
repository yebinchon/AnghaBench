
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap {int dummy; } ;


 int pcap_close (struct pcap*) ;
 struct pcap* pcaps_to_close ;

__attribute__((used)) static void
pcap_close_all(void)
{
 struct pcap *handle;

 while ((handle = pcaps_to_close) != ((void*)0))
  pcap_close(handle);
}

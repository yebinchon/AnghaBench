
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int dummy; } ;


 int mac_prepare_type (struct mac**,char*) ;

int
mac_prepare_packet_label(struct mac **mac)
{

 return (mac_prepare_type(mac, "packet"));
}

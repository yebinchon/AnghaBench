
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ip {scalar_t__ ip_id; } ;



void
ip_fillid(struct ip *ip)
{
 static uint16_t ip_id;

 ip->ip_id = ip_id++;
}

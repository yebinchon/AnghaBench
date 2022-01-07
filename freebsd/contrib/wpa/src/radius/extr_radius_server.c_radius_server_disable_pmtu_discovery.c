
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int action ;


 int IPPROTO_IP ;
 int IP_MTU_DISCOVER ;
 int IP_PMTUDISC_DONT ;
 int MSG_ERROR ;
 int errno ;
 int setsockopt (int,int ,int ,int*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int radius_server_disable_pmtu_discovery(int s)
{
 int r = -1;
 return r;
}

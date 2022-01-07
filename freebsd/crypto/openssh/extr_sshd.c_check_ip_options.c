
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int text ;
struct ssh {int dummy; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ socklen_t ;
typedef int opts ;
typedef int from ;


 scalar_t__ AF_INET ;
 int IPPROTO_IP ;
 int IP_OPTIONS ;
 int fatal (char*,int ,int ,char*) ;
 scalar_t__ getpeername (int,struct sockaddr*,scalar_t__*) ;
 scalar_t__ getsockopt (int,int ,int ,int*,scalar_t__*) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int ssh_packet_get_connection_in (struct ssh*) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;

__attribute__((used)) static void
check_ip_options(struct ssh *ssh)
{
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
struct rpcap_header {int dummy; } ;
typedef int SOCKET ;


 int rpcap_check_msg_type (int ,int ,struct rpcap_header*,int *,char*) ;
 int rpcap_check_msg_ver (int ,int ,struct rpcap_header*,char*) ;
 int rpcap_recv_msg_header (int ,struct rpcap_header*,char*) ;

__attribute__((used)) static int rpcap_process_msg_header(SOCKET sock, uint8 expected_ver, uint8 request_type, struct rpcap_header *header, char *errbuf)
{
 uint16 errcode;

 if (rpcap_recv_msg_header(sock, header, errbuf) == -1)
 {

  return -1;
 }




 if (rpcap_check_msg_ver(sock, expected_ver, header, errbuf) == -1)
  return -1;




 return rpcap_check_msg_type(sock, request_type, header,
     &errcode, errbuf);
}

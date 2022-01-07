
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct in_addr {int dummy; } ;
typedef int address ;


 int AF_INET ;
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_IP4 ;
 int inet_pton (int ,char*,struct in_addr*) ;
 int memmove (int *,struct in_addr*,int) ;

int sldns_str2wire_a_buf(const char* str, uint8_t* rd, size_t* len)
{
 struct in_addr address;
 if(inet_pton(AF_INET, (char*)str, &address) != 1)
  return LDNS_WIREPARSE_ERR_SYNTAX_IP4;
 if(*len < sizeof(address))
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 memmove(rd, &address, sizeof(address));
 *len = sizeof(address);
 return LDNS_WIREPARSE_ERR_OK;
}

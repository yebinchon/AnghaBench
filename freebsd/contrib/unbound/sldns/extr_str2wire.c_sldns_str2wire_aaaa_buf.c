
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AF_INET6 ;
 int LDNS_IP6ADDRLEN ;
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_NOT_IMPL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_IP6 ;
 int inet_pton (int ,char*,int *) ;
 int memmove (int *,int *,int) ;

int sldns_str2wire_aaaa_buf(const char* str, uint8_t* rd, size_t* len)
{
 return LDNS_WIREPARSE_ERR_NOT_IMPL;

}

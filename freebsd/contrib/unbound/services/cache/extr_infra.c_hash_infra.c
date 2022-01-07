
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
typedef int hashvalue_type ;


 int dname_query_hash (int *,int ) ;
 int hash_addr (struct sockaddr_storage*,int ,int) ;

__attribute__((used)) static hashvalue_type
hash_infra(struct sockaddr_storage* addr, socklen_t addrlen, uint8_t* name)
{
 return dname_query_hash(name, hash_addr(addr, addrlen, 1));
}

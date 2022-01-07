
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;
typedef int sockaddr_u ;


 struct addrinfo CreateAddrinfo (int *) ;
 int CreateSockaddr4 (char const*) ;
 int TEST_ASSERT_EQUAL_STRING (char const*,int ) ;
 int addrinfo_to_str (struct addrinfo*) ;
 int ss_to_str (int *) ;

void
test_IPv4Address(void) {
 const char* ADDR = "192.0.2.10";

 sockaddr_u input = CreateSockaddr4(ADDR);
 struct addrinfo inputA = CreateAddrinfo(&input);

 TEST_ASSERT_EQUAL_STRING(ADDR, ss_to_str(&input));
 TEST_ASSERT_EQUAL_STRING(ADDR, addrinfo_to_str(&inputA));
}

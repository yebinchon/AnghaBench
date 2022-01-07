
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int memcmp (char*,char*,scalar_t__) ;

__attribute__((used)) static int buffer_is_zero(char *addr, ssize_t size)
{
 return addr[0] == 0 && !memcmp(addr, addr + 1, size - 1);
}

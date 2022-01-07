
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 struct hostent* gethostbyname (char const*) ;
 int h_errno ;

int
DNSlookup_name(
 const char *name,
 int ai_family,
 struct hostent **Addresses
)
{
 *Addresses = gethostbyname(name);
 return (h_errno);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr_dl {int dummy; } ;
struct sockaddr {int sa_family; } ;





__attribute__((used)) static int
salen(struct sockaddr *sa)
{
 switch (sa->sa_family) {

 case 129:
  return (sizeof(struct sockaddr_in));

 case 128:
  return (sizeof(struct sockaddr_dl));

 default:
  return (sizeof(struct sockaddr));
 }
}

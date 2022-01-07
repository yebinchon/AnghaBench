
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int memcmp (void*,void*,int) ;

int
sacmp(void *sa1, void *sa2)
{
 void *p1, *p2;
 int len;

 if (((struct sockaddr *)sa1)->sa_family !=
     ((struct sockaddr *)sa2)->sa_family)
  return (1);

 switch (((struct sockaddr *)sa1)->sa_family) {
 case 129:
  p1 = &((struct sockaddr_in *)sa1)->sin_addr;
  p2 = &((struct sockaddr_in *)sa2)->sin_addr;
  len = 4;
  break;
 case 128:
  p1 = &((struct sockaddr_in6 *)sa1)->sin6_addr;
  p2 = &((struct sockaddr_in6 *)sa2)->sin6_addr;
  len = 16;
  if (((struct sockaddr_in6 *)sa1)->sin6_scope_id !=
      ((struct sockaddr_in6 *)sa2)->sin6_scope_id)
   return (1);
  break;
 default:
  return (1);
 }

 return memcmp(p1, p2, len);
}

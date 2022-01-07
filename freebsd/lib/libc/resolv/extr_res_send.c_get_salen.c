
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;

__attribute__((used)) static int
get_salen(const struct sockaddr *sa)
{







 if (sa->sa_family == AF_INET)
  return (sizeof(struct sockaddr_in));
 else if (sa->sa_family == AF_INET6)
  return (sizeof(struct sockaddr_in6));
 else
  return (0);
}

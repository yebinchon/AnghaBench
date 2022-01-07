
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_len; int ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef int socklen_t ;




 int PJDLOG_ABORT (char*,int) ;

__attribute__((used)) static socklen_t
sockaddr_len(const struct sockaddr_storage *ss)
{




 switch (ss->ss_family) {
 case 129:
  return (sizeof(struct sockaddr_in));
 case 128:
  return (sizeof(struct sockaddr_in6));
 default:
  PJDLOG_ABORT("Unexpected family %hhu.", ss->ss_family);
 }

}

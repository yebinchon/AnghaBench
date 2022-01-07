
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 struct sockaddr* malloc (size_t) ;
 struct sockaddr* memcpy (struct sockaddr*,struct sockaddr*,size_t) ;

__attribute__((used)) static struct sockaddr *
dup_sockaddr(struct sockaddr *sa, size_t sa_length)
{
 struct sockaddr *newsa;

 if ((newsa = malloc(sa_length)) == ((void*)0))
  return (((void*)0));
 return (memcpy(newsa, sa, sa_length));
}

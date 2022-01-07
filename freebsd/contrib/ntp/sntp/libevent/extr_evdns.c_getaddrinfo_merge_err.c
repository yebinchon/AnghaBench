
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
getaddrinfo_merge_err(int e1, int e2)
{

 if (e1 == 0)
  return e2;
 else
  return e1;
}

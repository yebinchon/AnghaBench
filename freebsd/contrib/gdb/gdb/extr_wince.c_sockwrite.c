
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;


 int attempt_resync (int ,int ) ;
 int s ;
 size_t send (int ,void const*,size_t,int ) ;

__attribute__((used)) static int
sockwrite (LPCSTR huh, const void *str, size_t n)
{
  for (;;)
    {
      if (send (s, str, n, 0) == n)
 return n;
      attempt_resync (huh, s);
    }
}

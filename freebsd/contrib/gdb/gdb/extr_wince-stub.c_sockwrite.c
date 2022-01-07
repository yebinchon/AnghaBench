
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int attempt_resync (int ,int) ;
 int send (int,void const*,size_t,int ) ;

__attribute__((used)) static int
sockwrite (LPCWSTR huh, int s, const void *str, size_t n)
{
  for (;;)
    {
      if (send (s, str, n, 0) == (int) n)
 return n;
      attempt_resync (huh, s);
    }
}

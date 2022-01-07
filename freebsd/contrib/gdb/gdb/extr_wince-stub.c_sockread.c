
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int attempt_resync (int ,int) ;
 int recv (int,void*,size_t,int ) ;

__attribute__((used)) static int
sockread (LPCWSTR huh, int s, void *str, size_t n)
{
  for (;;)
    {
      if (recv (s, str, n, 0) == (int) n)
 return n;
      attempt_resync (huh, s);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int __ldxfsr (int const) ;

inline int
fesetenv(const fenv_t *__envp)
{

 __ldxfsr(*__envp);
 return (0);
}

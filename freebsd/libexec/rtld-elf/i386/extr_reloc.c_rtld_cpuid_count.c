
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static void
rtld_cpuid_count(int idx, int cnt, u_int *p)
{

 __asm __volatile(
     "	pushl	%%ebx\n"
     "	cpuid\n"
     "	movl	%%ebx,%1\n"
     "	popl	%%ebx\n"
     : "=a" (p[0]), "=r" (p[1]), "=c" (p[2]), "=d" (p[3])
     : "0" (idx), "2" (cnt));
}

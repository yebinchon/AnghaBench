
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int cmp_u8s_desc(const void *a, const void *b)
{
 return (*(u8 *) b - *(u8 *) a);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cp_ivspace(int ch)
{
 return (ch == ',' || (ch > 0 && ch <= ' '));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int swabst (int *,int *) ;

__attribute__((used)) static u_long
swabl(u_long x)
{
 swabst((u_char *)"l", (u_char *)&x);
 return (x);
}

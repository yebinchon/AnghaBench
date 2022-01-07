
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct interface {int dummy; } ;


 int NHASH_LEN ;
 struct interface** nhash_tbl ;

__attribute__((used)) static struct interface**
nhash(char *p)
{
 u_int i;

 for (i = 0; *p != '\0'; p++) {
  i = ((i<<1) & 0x7fffffff) | ((i>>31) & 1);
  i ^= *p;
 }
 return &nhash_tbl[i % NHASH_LEN];
}

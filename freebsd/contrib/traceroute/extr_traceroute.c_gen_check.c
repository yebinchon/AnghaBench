
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_char ;


 scalar_t__ ident ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ port ;

int
gen_check(const u_char *data, int seq)
{
 u_int16_t *const ptr = (u_int16_t *) data;

 return(ntohs(ptr[0]) == ident
     && ntohs(ptr[1]) == port + seq);
}

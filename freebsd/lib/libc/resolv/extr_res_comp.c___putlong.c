
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;


 int ns_put32 (int ,int *) ;

void __putlong(u_int32_t src, u_char *dst) { ns_put32(src, dst); }

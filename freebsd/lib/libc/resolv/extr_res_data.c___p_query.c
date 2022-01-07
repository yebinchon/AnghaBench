
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int fp_query (int const*,int ) ;
 int stdout ;

void
p_query(const u_char *msg) {
 fp_query(msg, stdout);
}

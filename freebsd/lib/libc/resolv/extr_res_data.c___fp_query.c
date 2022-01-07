
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FILE ;


 int PACKETSZ ;
 int fp_nquery (int const*,int ,int *) ;

void
fp_query(const u_char *msg, FILE *file) {
 fp_nquery(msg, PACKETSZ, file);
}

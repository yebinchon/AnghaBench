
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ldns_fskipcs_l (int *,char const*,int *) ;

void
ldns_fskipcs(FILE *fp, const char *s)
{
 ldns_fskipcs_l(fp, s, ((void*)0));
}

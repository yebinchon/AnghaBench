
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int sldns_fskipcs_l (int *,char const*,int *) ;

void
sldns_fskipcs(FILE *fp, const char *s)
{
 sldns_fskipcs_l(fp, s, ((void*)0));
}

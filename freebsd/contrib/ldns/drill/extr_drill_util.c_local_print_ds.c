
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int FILE ;


 int fprintf (int *,char*,char const*) ;
 int ldns_rr_free (int *) ;
 int ldns_rr_print (int *,int *) ;

__attribute__((used)) static inline void
local_print_ds(FILE* out, const char* pre, ldns_rr* ds)
{
 if (out && ds) {
  fprintf(out, "%s", pre);
  ldns_rr_print(out, ds);
  ldns_rr_free(ds);
 }
}

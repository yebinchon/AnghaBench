
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int dummy; } ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int LDNS_RR_TYPE_MX ;
 int dnslook (struct ub_ctx*,char*,int,int,int) ;
 int free (char*) ;
 int massage_class (char const*) ;
 char* massage_qname (char const*,int*) ;
 int massage_type (char const*,int,int*) ;
 int ub_ctx_delete (struct ub_ctx*) ;

__attribute__((used)) static void
lookup(struct ub_ctx* ctx, const char* nm, const char* qt, const char* qc)
{

 int multi = 0;
 int reverse = 0;
 char* realq = massage_qname(nm, &reverse);
 int t = massage_type(qt, reverse, &multi);
 int c = massage_class(qc);


 if(multi) {
  if(!dnslook(ctx, realq, LDNS_RR_TYPE_A, c, 1)) {

   (void)dnslook(ctx, realq, LDNS_RR_TYPE_AAAA, c, 0);
   (void)dnslook(ctx, realq, LDNS_RR_TYPE_MX, c, 0);
  }
 } else {
  (void)dnslook(ctx, realq, t, c, 1);
 }
 ub_ctx_delete(ctx);
 free(realq);
}

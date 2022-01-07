
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_result {int nxdomain; } ;
struct ub_ctx {int dummy; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int pretty_output (char*,int,int,struct ub_result*,int) ;
 int stderr ;
 int ub_resolve (struct ub_ctx*,char*,int,int,struct ub_result**) ;
 int ub_resolve_free (struct ub_result*) ;
 char* ub_strerror (int) ;

__attribute__((used)) static int
dnslook(struct ub_ctx* ctx, char* q, int t, int c, int docname)
{
 int ret;
 struct ub_result* result;

 ret = ub_resolve(ctx, q, t, c, &result);
 if(ret != 0) {
  fprintf(stderr, "resolve error: %s\n", ub_strerror(ret));
  exit(1);
 }
 pretty_output(q, t, c, result, docname);
 ret = result->nxdomain;
 ub_resolve_free(result);
 return ret;
}

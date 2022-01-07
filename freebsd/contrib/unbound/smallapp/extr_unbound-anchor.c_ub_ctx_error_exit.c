
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int dummy; } ;


 int exit (int ) ;
 int printf (char*,...) ;
 int ub_ctx_delete (struct ub_ctx*) ;
 scalar_t__ verb ;

__attribute__((used)) static void
ub_ctx_error_exit(struct ub_ctx* ctx, const char* str, const char* str2)
{
 ub_ctx_delete(ctx);
 if(str && str2 && verb) printf("%s: %s\n", str, str2);
 if(verb) printf("error: could not create unbound resolver context\n");
 exit(0);
}

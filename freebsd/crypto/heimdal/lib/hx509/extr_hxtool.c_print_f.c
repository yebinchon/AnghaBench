
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_s {int verbose; int counter; } ;
typedef int hx509_context ;
typedef int hx509_cert ;


 int context ;
 int print_certificate (int ,int ,int ) ;
 int printf (char*,int ) ;

__attribute__((used)) static int
print_f(hx509_context hxcontext, void *ctx, hx509_cert cert)
{
    struct print_s *s = ctx;

    printf("cert: %d\n", s->counter++);
    print_certificate(context, cert, s->verbose);

    return 0;
}

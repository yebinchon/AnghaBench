
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_hints_stub {int dp; } ;


 int delegpt_free_mlc (int ) ;
 int free (struct iter_hints_stub*) ;

__attribute__((used)) static void hints_stub_free(struct iter_hints_stub* s)
{
 if(!s) return;
 delegpt_free_mlc(s->dp);
 free(s);
}

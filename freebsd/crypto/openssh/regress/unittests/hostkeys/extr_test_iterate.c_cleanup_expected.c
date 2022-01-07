
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * key; } ;
struct expected {TYPE_1__ l; } ;


 int sshkey_free (int *) ;

__attribute__((used)) static void
cleanup_expected(struct expected *expected, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++) {
  sshkey_free(expected[i].l.key);
  expected[i].l.key = ((void*)0);
 }
}

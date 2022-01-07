
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ keytype; int key; } ;
struct expected {TYPE_1__ l; int * key_file; } ;


 int ASSERT_INT_EQ (int ,int ) ;
 scalar_t__ KEY_ECDSA ;
 int sshkey_load_public (int ,int *,int *) ;
 int test_data_file (int *) ;

__attribute__((used)) static void
prepare_expected(struct expected *expected, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++) {
  if (expected[i].key_file == ((void*)0))
   continue;

  if (expected[i].l.keytype == KEY_ECDSA)
   continue;

  ASSERT_INT_EQ(sshkey_load_public(
      test_data_file(expected[i].key_file), &expected[i].l.key,
      ((void*)0)), 0);
 }
}

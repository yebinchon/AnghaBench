
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int ASSERT_INT_EQ (int,int ) ;
 int ASSERT_PTR_NE (struct sshkey*,int *) ;
 int sshkey_load_public (int ,struct sshkey**,int *) ;
 int test_data_file (char const*) ;

__attribute__((used)) static struct sshkey *
load_key(const char *name)
{
 struct sshkey *ret;
 int r;

 r = sshkey_load_public(test_data_file(name), &ret, ((void*)0));
 ASSERT_INT_EQ(r, 0);
 ASSERT_PTR_NE(ret, ((void*)0));
 return ret;
}

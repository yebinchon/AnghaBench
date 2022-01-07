
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;


 char* CreatePath (char*,int ) ;
 int DestroyPath (char const*) ;
 int INPUT_DIR ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_NULL (char const*) ;
 int TEST_ASSERT_NULL (struct key*) ;
 int auth_init (char const*,struct key**) ;

void
test_ReadEmptyKeyFile(void)
{
 struct key * keys = ((void*)0);
 const char * path = CreatePath("key-test-empty", INPUT_DIR);

 TEST_ASSERT_NOT_NULL(path);
 TEST_ASSERT_EQUAL(0, auth_init(path, &keys));
 TEST_ASSERT_NULL(keys);

 DestroyPath(path);
}

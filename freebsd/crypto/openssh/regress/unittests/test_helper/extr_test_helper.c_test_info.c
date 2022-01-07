
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* active_test_name ;
 int snprintf (char*,size_t,char*,int,char*,char*,char*) ;
 char* subtest_info ;
 int test_number ;

void
test_info(char *s, size_t len)
{
 snprintf(s, len, "In test %u: \"%s\"%s%s\n", test_number,
     active_test_name == ((void*)0) ? "<none>" : active_test_name,
     *subtest_info != '\0' ? " - " : "", subtest_info);
}

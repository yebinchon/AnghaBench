
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* common_test_pidfile_child (char const*,int ) ;

__attribute__((used)) static const char *
test_pidfile_contested(void)
{
 const char *fn = "test_pidfile_contested";
 const char *result;

 result = common_test_pidfile_child(fn, 0);
 return (result);
}

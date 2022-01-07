
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_string_t ;


 int exit (int) ;
 scalar_t__ heim_cmp (int ,int ) ;
 int heim_release (int ) ;
 int heim_string_create (char const*) ;
 int printf (char*) ;

__attribute__((used)) static int
test_string(void)
{
    heim_string_t s1, s2;
    const char *string = "hejsan";

    s1 = heim_string_create(string);
    s2 = heim_string_create(string);

    if (heim_cmp(s1, s2) != 0) {
 printf("the same string is not the same\n");
 exit(1);
    }

    heim_release(s1);
    heim_release(s2);

    return 0;
}

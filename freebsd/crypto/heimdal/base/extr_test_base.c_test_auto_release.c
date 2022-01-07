
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_string_t ;
typedef int heim_number_t ;
typedef int heim_auto_release_t ;


 int heim_auto_release (int ) ;
 int heim_auto_release_create () ;
 int heim_number_create (int) ;
 int heim_release (int ) ;
 int heim_string_create (char*) ;

__attribute__((used)) static int
test_auto_release(void)
{
    heim_auto_release_t ar1, ar2;
    heim_number_t n1;
    heim_string_t s1;

    ar1 = heim_auto_release_create();

    s1 = heim_string_create("hejsan");
    heim_auto_release(s1);

    n1 = heim_number_create(1);
    heim_auto_release(n1);

    ar2 = heim_auto_release_create();

    n1 = heim_number_create(1);
    heim_auto_release(n1);

    heim_release(ar2);
    heim_release(ar1);

    return 0;
}

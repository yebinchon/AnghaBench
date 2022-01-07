
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_string_t ;
typedef int heim_number_t ;
typedef int heim_dict_t ;


 int heim_dict_add_value (int ,int ,int ) ;
 int heim_dict_create (int) ;
 int heim_dict_delete_key (int ,int ) ;
 int heim_number_create (int) ;
 int heim_release (int ) ;
 int heim_string_create (char*) ;

__attribute__((used)) static int
test_dict(void)
{
    heim_dict_t dict;
    heim_number_t a1 = heim_number_create(1);
    heim_string_t a2 = heim_string_create("hejsan");
    heim_number_t a3 = heim_number_create(3);
    heim_string_t a4 = heim_string_create("foosan");

    dict = heim_dict_create(10);

    heim_dict_add_value(dict, a1, a2);
    heim_dict_add_value(dict, a3, a4);

    heim_dict_delete_key(dict, a3);
    heim_dict_delete_key(dict, a1);

    heim_release(a1);
    heim_release(a2);
    heim_release(a3);
    heim_release(a4);

    heim_release(dict);

    return 0;
}

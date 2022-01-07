
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int option_type ;


 int assert (int ) ;




__attribute__((used)) static char const* required_message(option_type opt_type) {
    switch (opt_type) {
        case 128:
            return "[required]";
        case 129:
            return "[optional]";
        case 130:
            return "";
        default:
            assert(0);
            return ((void*)0);
    }
}

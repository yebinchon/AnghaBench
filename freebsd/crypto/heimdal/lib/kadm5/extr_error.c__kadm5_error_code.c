
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kadm5_ret_t ;




 int KADM5_DUP ;
 int KADM5_UNK_PRINC ;

kadm5_ret_t
_kadm5_error_code(kadm5_ret_t code)
{
    switch(code){
    case 129:
 return KADM5_DUP;
    case 128:
 return KADM5_UNK_PRINC;
    }
    return code;
}

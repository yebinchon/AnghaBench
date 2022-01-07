
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;



 int NID_undef ;

__attribute__((used)) static int ecd_ctrl(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {
    case 128:

        *(int *)arg2 = NID_undef;
        return 2;

    default:
        return -2;

    }
}

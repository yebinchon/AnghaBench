
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * public_key; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ CTLOG ;



EVP_PKEY *CTLOG_get0_public_key(const CTLOG *log)
{
    return log->public_key;
}

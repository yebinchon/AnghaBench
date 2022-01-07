
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int krb5_storage ;


 int EINVAL ;

__attribute__((used)) static int
mem_no_trunc(krb5_storage *sp, off_t offset)
{
    return EINVAL;
}

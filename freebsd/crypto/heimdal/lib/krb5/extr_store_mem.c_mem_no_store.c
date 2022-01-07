
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int krb5_storage ;



__attribute__((used)) static ssize_t
mem_no_store(krb5_storage *sp, const void *data, size_t size)
{
    return -1;
}

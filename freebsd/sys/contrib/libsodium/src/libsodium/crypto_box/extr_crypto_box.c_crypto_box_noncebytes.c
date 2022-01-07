
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_box_NONCEBYTES ;

size_t
crypto_box_noncebytes(void)
{
    return crypto_box_NONCEBYTES;
}

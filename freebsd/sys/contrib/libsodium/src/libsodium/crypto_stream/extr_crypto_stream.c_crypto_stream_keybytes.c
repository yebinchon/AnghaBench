
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_stream_KEYBYTES ;

size_t
crypto_stream_keybytes(void)
{
    return crypto_stream_KEYBYTES;
}

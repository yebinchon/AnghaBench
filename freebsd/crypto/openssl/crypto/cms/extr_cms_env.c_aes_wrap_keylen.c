
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t aes_wrap_keylen(int nid)
{
    switch (nid) {
    case 130:
        return 16;

    case 129:
        return 24;

    case 128:
        return 32;

    default:
        return 0;
    }
}

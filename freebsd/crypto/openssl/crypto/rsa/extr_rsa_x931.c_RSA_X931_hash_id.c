
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int RSA_X931_hash_id(int nid)
{
    switch (nid) {
    case 131:
        return 0x33;

    case 130:
        return 0x34;

    case 129:
        return 0x36;

    case 128:
        return 0x35;

    }
    return -1;
}

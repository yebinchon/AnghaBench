
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;






__attribute__((used)) static long bio_bucket_ctrl(BIO *bio, int cmd, long num, void *ptr)
{
    long ret = 1;

    switch (cmd) {
    default:

        break;
    case 130:

        break;
    case 128:
    case 129:
        ret = 0;
        break;
    }
    return ret;
}

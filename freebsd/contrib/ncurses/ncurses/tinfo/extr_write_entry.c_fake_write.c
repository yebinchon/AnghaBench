
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static size_t
fake_write(char *dst,
    unsigned *offset,
    size_t limit,
    char *src,
    size_t want,
    size_t size)
{
    size_t have = (limit - *offset);

    want *= size;
    if (have > 0) {
 if (want > have)
     want = have;
 memcpy(dst + *offset, src, want);
 *offset += (unsigned) want;
    } else {
 want = 0;
    }
    return (want / size);
}

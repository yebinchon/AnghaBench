
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*,char const*,char const*) ;
 int bio_err ;
 int memcpy (char*,char const*,size_t const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int join(char buf[], size_t buf_size, const char *name,
                const char *tail, const char *desc)
{
    const size_t name_len = strlen(name), tail_len = strlen(tail);

    if (name_len + tail_len + 1 > buf_size) {
        BIO_printf(bio_err, "%s '%s' too long\n", desc, name);
        return 0;
    }
    memcpy(buf, name, name_len);
    memcpy(buf + name_len, tail, tail_len + 1);
    return 1;
}

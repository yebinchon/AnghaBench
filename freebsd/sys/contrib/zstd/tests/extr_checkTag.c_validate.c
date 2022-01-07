
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* const ZSTD_VERSION_STRING ;
 size_t strlen (char const* const) ;
 scalar_t__ strncmp (char const* const,char const* const,size_t const) ;

__attribute__((used)) static int validate(const char* const tag)
{
    size_t const tagLength = strlen(tag);
    size_t const verLength = strlen(ZSTD_VERSION_STRING);

    if (tagLength < 2) return 0;
    if (tag[0] != 'v') return 0;
    if (tagLength <= verLength) return 0;

    if (strncmp(ZSTD_VERSION_STRING, tag+1, verLength)) return 0;

    return 1;
}

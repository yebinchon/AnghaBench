
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INDENT ;
 scalar_t__ column ;
 int force_wrap () ;
 int outbuf ;
 char const* separator ;
 int strcpy_DYN (int *,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ width ;

__attribute__((used)) static void
wrap_concat(const char *src)
{
    size_t need = strlen(src);
    size_t want = strlen(separator) + need;

    if (column > INDENT
 && column + (int) want > width) {
 force_wrap();
    }
    strcpy_DYN(&outbuf, src);
    strcpy_DYN(&outbuf, separator);
    column += (int) need;
}

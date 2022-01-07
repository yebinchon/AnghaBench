
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int utf16_to_unicode (int *,char const*,size_t,int ) ;

__attribute__((used)) static int
utf16le_to_unicode(uint32_t *pwc, const char *s, size_t n)
{
 return (utf16_to_unicode(pwc, s, n, 0));
}

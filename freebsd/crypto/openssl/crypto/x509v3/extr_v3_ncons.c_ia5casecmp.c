
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 int ia5ncasecmp (char const*,char const*,int ) ;

__attribute__((used)) static int ia5casecmp(const char *s1, const char *s2)
{
    return ia5ncasecmp(s1, s2, SIZE_MAX);
}

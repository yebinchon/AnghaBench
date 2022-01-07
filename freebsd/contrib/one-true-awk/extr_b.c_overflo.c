
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,char const*) ;

void overflo(const char *s)
{
 FATAL("regular expression too big: %.30s...", s);
}

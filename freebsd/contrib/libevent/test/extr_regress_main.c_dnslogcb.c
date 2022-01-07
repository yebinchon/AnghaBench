
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TT_BLATHER (char*) ;

__attribute__((used)) static void dnslogcb(int w, const char *m)
{
 TT_BLATHER(("%s", m));
}

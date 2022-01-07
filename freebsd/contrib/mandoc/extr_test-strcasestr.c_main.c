
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strcasestr (char const*,char*) ;

int
main(void)
{
 const char *big = "BigString";
 char *cp = strcasestr(big, "Gst");
 return cp != big + 2;
}

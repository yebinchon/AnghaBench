
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getsubopt (char**,char* const*,char**) ;

int
main(void)
{
 char buf[] = "k=v";
 char *options = buf;
 char token0[] = "k";
 char *const tokens[] = { token0, ((void*)0) };
 char *value = ((void*)0);
 return ! (getsubopt(&options, tokens, &value) == 0
     && value == buf+2 && options == buf+3);
}

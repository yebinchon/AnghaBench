
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ps (char*,char*,size_t) ;

__attribute__((used)) static char *
p2(size_t len)
{
 return ps("((.*){0,255}", ")", len);
}

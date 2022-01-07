
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int re_gotexp ;
 int re_regexp ;
 int regexec (int *,char const*,int ,int *,int ) ;

int
re_exec(const char *s)
{
 int rc;

 if (!re_gotexp)
  return (-1);
 rc = regexec(&re_regexp, s, 0, ((void*)0), 0);
 return (rc == 0 ? 1 : 0);
}

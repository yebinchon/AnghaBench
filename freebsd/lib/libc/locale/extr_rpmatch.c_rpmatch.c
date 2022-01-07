
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int NOEXPR ;
 int REG_EXTENDED ;
 int REG_NOSUB ;
 int YESEXPR ;
 int nl_langinfo (int ) ;
 scalar_t__ regcomp (int *,int ,int) ;
 scalar_t__ regexec (int *,char const*,int ,int *,int ) ;
 int regfree (int *) ;

int
rpmatch(const char *response)
{
 regex_t yes, no;
 int ret;

 if (regcomp(&yes, nl_langinfo(YESEXPR), REG_EXTENDED|REG_NOSUB) != 0)
  return (-1);
 if (regcomp(&no, nl_langinfo(NOEXPR), REG_EXTENDED|REG_NOSUB) != 0) {
  regfree(&yes);
  return (-1);
 }
 if (regexec(&yes, response, 0, ((void*)0), 0) == 0)
  ret = 1;
 else if (regexec(&no, response, 0, ((void*)0), 0) == 0)
  ret = 0;
 else
  ret = -1;
 regfree(&yes);
 regfree(&no);
 return (ret);
}

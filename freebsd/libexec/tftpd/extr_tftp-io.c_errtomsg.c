
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct errmsg {int e_code; char const* e_msg; } ;
typedef int ebuf ;


 struct errmsg* errmsgs ;
 int snprintf (char*,int,char*,int) ;

const char *
errtomsg(int error)
{
 static char ebuf[40];
 struct errmsg *pe;

 if (error == 0)
  return ("success");
 for (pe = errmsgs; pe->e_code >= 0; pe++)
  if (pe->e_code == error)
   return (pe->e_msg);
 snprintf(ebuf, sizeof(ebuf), "error %d", error);
 return (ebuf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ isspace (char) ;
 scalar_t__ strtol (char const*,char**,int ) ;

int fst_read_next_int_param(const char *params, Boolean *valid, char **endp)
{
 int ret = -1;
 const char *curp;

 *valid = FALSE;
 *endp = (char *) params;
 curp = params;
 if (*curp) {
  ret = (int) strtol(curp, endp, 0);
  if (!**endp || isspace(**endp))
   *valid = TRUE;
 }

 return ret;
}

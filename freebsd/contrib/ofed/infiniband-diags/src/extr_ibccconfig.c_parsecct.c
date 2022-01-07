
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char* parseint (char*,int *,int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *parsecct(char *arg, uint32_t *shift, uint32_t *multiplier)
{
 char buf[1024] = { 0 };
 char *errstr;
 char *ptr;

 strcpy(buf, arg);

 if (!(ptr = strchr(buf, ':')))
  return "ccts are formatted shift:multiplier";

 *ptr = '\0';
 ptr++;

 if ((errstr = parseint(buf, shift, 0)))
  return errstr;

 if ((errstr = parseint(ptr, multiplier, 0)))
  return errstr;

 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int snprintf (char*,int,char*,double) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static char *
normal_dtoa(
 double d
 )
{
 char * buf;
 char * pch_e;
 char * pch_nz;

 LIB_GETBUF(buf);
 snprintf(buf, LIB_BUFLENGTH, "%g", d);


 pch_e = strchr(buf, 'e');
 if (((void*)0) == pch_e) {
  pch_e = strchr(buf, 'E');
  if (((void*)0) == pch_e)
   return buf;
  *pch_e = 'e';
 }
 pch_e++;
 if ('-' == *pch_e)
  pch_e++;
 pch_nz = pch_e;
 while ('0' == *pch_nz)
  pch_nz++;
 if (pch_nz == pch_e)
  return buf;
 strlcpy(pch_e, pch_nz, LIB_BUFLENGTH - (pch_e - buf));

 return buf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int sprintf (char*,char*,unsigned char) ;
 int strcat (char*,char*) ;

isc_result_t
tohexstr(unsigned char *d, unsigned int len, char *out) {

 out[0]='\0';
 char c_ret[] = "AA";
 unsigned int i;
 strcat(out, "0x");
 for (i = 0; i < len; i++) {
  sprintf(c_ret, "%02X", d[i]);
  strcat(out, c_ret);
 }
 strcat(out, "\0");
 return (ISC_R_SUCCESS);
}

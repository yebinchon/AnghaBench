
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_int16_t ;


 int __p_type_syms ;
 scalar_t__ errno ;
 int isdigit (unsigned char) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 unsigned long strtoul (char const*,char**,int) ;
 unsigned long sym_ston (int ,char const*,int*) ;

u_int16_t
res_nametotype(const char *buf, int *successp) {
 unsigned long result;
 char *endptr;
 int success;

 result = sym_ston(__p_type_syms, buf, &success);
 if (success)
  goto done;

 if (strncasecmp(buf, "type", 4) != 0 ||
     !isdigit((unsigned char)buf[4]))
  goto done;
 errno = 0;
 result = strtoul(buf + 4, &endptr, 10);
 if (errno == 0 && *endptr == '\0' && result <= 0xffffU)
  success = 1;
 done:
 if (successp)
  *successp = success;
 return (result);
}

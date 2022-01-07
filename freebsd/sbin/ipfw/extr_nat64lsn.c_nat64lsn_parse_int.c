
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int EX_USAGE ;
 int errx (int ,char*,char const*,char const*) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static uint32_t
nat64lsn_parse_int(const char *arg, const char *desc)
{
 char *p;
 uint32_t val;

 val = (uint32_t)strtol(arg, &p, 10);
 if (*p != '\0')
  errx(EX_USAGE, "Invalid %s value: %s\n", desc, arg);
 return (val);
}

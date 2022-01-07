
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strtok (int *,char const*) ;
 unsigned int strtoul (char*,char**,int ) ;

__attribute__((used)) static
bool parse_size(unsigned *tsz, unsigned *tflags, unsigned mask,
  const char *parse_sep)
{
 char *val, *nextchar;

 val = strtok(((void*)0), parse_sep);
 if (!val)
  return 0;
 *tsz = strtoul(val, &nextchar, 0);
 if (*tsz) {
  if (*nextchar == 't' || *nextchar == 'T')
   *tflags &= ~mask;
  else if (*nextchar == 'm' || *nextchar == 'M')
   *tflags |= mask;







  if (*tsz == 2)
   *tflags |= mask;
 }
 return 1;
}

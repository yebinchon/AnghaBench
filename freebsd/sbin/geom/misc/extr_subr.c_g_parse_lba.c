
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int EINVAL ;
 int ERANGE ;
 int OFF_MAX ;
 int assert (int) ;
 scalar_t__ strtoimax (char const*,char**,int ) ;

int
g_parse_lba(const char *lbastr, unsigned int sectorsize, off_t *sectors)
{
 off_t number, mult, unit;
 char *s;

 assert(lbastr != ((void*)0));
 assert(sectorsize > 0);
 assert(sectors != ((void*)0));

 number = (off_t)strtoimax(lbastr, &s, 0);
 if (s == lbastr || number < 0)
  return (EINVAL);

 mult = 1;
 unit = sectorsize;
 if (*s == '\0')
  goto done;
 switch (*s) {
 case 'e': case 'E':
  mult *= 1024;

 case 'p': case 'P':
  mult *= 1024;

 case 't': case 'T':
  mult *= 1024;

 case 'g': case 'G':
  mult *= 1024;

 case 'm': case 'M':
  mult *= 1024;

 case 'k': case 'K':
  mult *= 1024;
  break;
 default:
  goto sfx;
 }
 unit = 1;
 s++;
 if (*s == '\0')
  goto done;
sfx:
 switch (*s) {
 case 's': case 'S':
  unit = sectorsize;
  break;
 case 'b': case 'B':
  unit = 1;
  break;
 default:
  return (EINVAL);
 }
 s++;
 if (*s != '\0')
  return (EINVAL);
done:
 if ((OFF_MAX / unit) < mult || (OFF_MAX / mult / unit) < number)
  return (ERANGE);
 number *= mult * unit;
 if (number % sectorsize)
  return (EINVAL);
 number /= sectorsize;
 *sectors = number;
 return (0);
}

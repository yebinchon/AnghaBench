
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int biospci_locator (int,int,int) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static uint32_t
comc_parse_pcidev(const char *string)
{




 char *p, *p1;
 uint8_t bus, dev, func, bar;
 uint32_t locator;
 int pres;

 pres = strtol(string, &p, 0);
 if (p == string || *p != ':' || pres < 0 )
  return (0);
 bus = pres;
 p1 = ++p;

 pres = strtol(p1, &p, 0);
 if (p == string || *p != ':' || pres < 0 )
  return (0);
 dev = pres;
 p1 = ++p;

 pres = strtol(p1, &p, 0);
 if (p == string || (*p != ':' && *p != '\0') || pres < 0 )
  return (0);
 func = pres;

 if (*p == ':') {
  p1 = ++p;
  pres = strtol(p1, &p, 0);
  if (p == string || *p != '\0' || pres <= 0 )
   return (0);
  bar = pres;
 } else
  bar = 0x10;

 locator = (bar << 16) | biospci_locator(bus, dev, func);
 return (locator);

}

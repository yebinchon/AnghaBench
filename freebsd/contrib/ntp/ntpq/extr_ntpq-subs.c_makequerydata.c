
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlist {scalar_t__ name; scalar_t__ value; } ;


 int MAXLIST ;
 int fprintf (int ,char*,scalar_t__) ;
 int memcpy (char*,char*,size_t) ;
 int stderr ;
 size_t strlen (scalar_t__) ;

__attribute__((used)) static void
makequerydata(
 struct varlist *vlist,
 size_t *datalen,
 char *data
 )
{
 register struct varlist *vl;
 register char *cp, *cpend;
 register size_t namelen, valuelen;
 register size_t totallen;

 cp = data;
 cpend = data + *datalen;

 for (vl = vlist; vl < vlist + MAXLIST && vl->name != 0; vl++) {
  namelen = strlen(vl->name);
  if (vl->value == 0)
   valuelen = 0;
  else
   valuelen = strlen(vl->value);
  totallen = namelen + valuelen + (valuelen != 0) + (cp != data);
  if (cp + totallen > cpend) {
      fprintf(stderr,
       "***Ignoring variables starting with `%s'\n",
       vl->name);
      break;
  }

  if (cp != data)
   *cp++ = ',';
  memcpy(cp, vl->name, (size_t)namelen);
  cp += namelen;
  if (valuelen != 0) {
   *cp++ = '=';
   memcpy(cp, vl->value, (size_t)valuelen);
   cp += valuelen;
  }
 }
 *datalen = (size_t)(cp - data);
}

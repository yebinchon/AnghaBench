
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; char** h_aliases; int h_length; char** h_addr_list; int h_addrtype; } ;


 int ALIGN (int) ;
 int TRY_AGAIN ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static struct hostent *
_hpcopy(struct hostent *hp, int *errp)
{
 struct hostent *nhp;
 char *cp, **pp;
 int size, addrsize;
 int nalias = 0, naddr = 0;
 int al_off;
 int i;

 if (hp == ((void*)0))
  return hp;


 size = sizeof(struct hostent);
 if (hp->h_name != ((void*)0))
  size += strlen(hp->h_name) + 1;
 if ((pp = hp->h_aliases) != ((void*)0)) {
  for (i = 0; *pp != ((void*)0); i++, pp++) {
   if (**pp != '\0') {
    size += strlen(*pp) + 1;
    nalias++;
   }
  }
 }

 size = ALIGN(size);
 al_off = size;
 size += sizeof(char *) * (nalias + 1);
 addrsize = ALIGN(hp->h_length);
 if ((pp = hp->h_addr_list) != ((void*)0)) {
  while (*pp++ != ((void*)0))
   naddr++;
 }
 size += addrsize * naddr;
 size += sizeof(char *) * (naddr + 1);


 if ((nhp = (struct hostent *)malloc(size)) == ((void*)0)) {
  *errp = TRY_AGAIN;
  return ((void*)0);
 }
 cp = (char *)&nhp[1];
 if (hp->h_name != ((void*)0)) {
  nhp->h_name = cp;
  strcpy(cp, hp->h_name);
  cp += strlen(cp) + 1;
 } else
  nhp->h_name = ((void*)0);
 nhp->h_aliases = (char **)((char *)nhp + al_off);
 if ((pp = hp->h_aliases) != ((void*)0)) {
  for (i = 0; *pp != ((void*)0); pp++) {
   if (**pp != '\0') {
    nhp->h_aliases[i++] = cp;
    strcpy(cp, *pp);
    cp += strlen(cp) + 1;
   }
  }
 }
 nhp->h_aliases[nalias] = ((void*)0);
 cp = (char *)&nhp->h_aliases[nalias + 1];
 nhp->h_addrtype = hp->h_addrtype;
 nhp->h_length = hp->h_length;
 nhp->h_addr_list = (char **)cp;
 if ((pp = hp->h_addr_list) != ((void*)0)) {
  cp = (char *)&nhp->h_addr_list[naddr + 1];
  for (i = 0; *pp != ((void*)0); pp++) {
   nhp->h_addr_list[i++] = cp;
   memcpy(cp, *pp, hp->h_length);
   cp += addrsize;
  }
 }
 nhp->h_addr_list[naddr] = ((void*)0);
 return nhp;
}

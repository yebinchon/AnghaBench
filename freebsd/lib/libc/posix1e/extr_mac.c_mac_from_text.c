
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int * m_string; scalar_t__ m_buflen; } ;


 int ENOMEM ;
 int free (struct mac*) ;
 scalar_t__ malloc (int) ;
 int * strdup (char const*) ;
 scalar_t__ strlen (int *) ;

int
mac_from_text(struct mac **mac, const char *text)
{

 *mac = (struct mac *) malloc(sizeof(**mac));
 if (*mac == ((void*)0))
  return (ENOMEM);

 (*mac)->m_string = strdup(text);
 if ((*mac)->m_string == ((void*)0)) {
  free(*mac);
  *mac = ((void*)0);
  return (ENOMEM);
 }

 (*mac)->m_buflen = strlen((*mac)->m_string)+1;

 return (0);
}

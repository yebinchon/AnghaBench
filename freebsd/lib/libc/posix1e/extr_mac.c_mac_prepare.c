
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int m_buflen; int * m_string; } ;


 int EINVAL ;
 int ENOMEM ;
 int MAC_MAX_LABEL_BUF_LEN ;
 int free (struct mac*) ;
 int * malloc (int) ;
 int strcpy (int *,char const*) ;
 int strlen (char const*) ;

int
mac_prepare(struct mac **mac, const char *elements)
{

 if (strlen(elements) >= MAC_MAX_LABEL_BUF_LEN)
  return (EINVAL);

 *mac = (struct mac *) malloc(sizeof(**mac));
 if (*mac == ((void*)0))
  return (ENOMEM);

 (*mac)->m_string = malloc(MAC_MAX_LABEL_BUF_LEN);
 if ((*mac)->m_string == ((void*)0)) {
  free(*mac);
  *mac = ((void*)0);
  return (ENOMEM);
 }

 strcpy((*mac)->m_string, elements);
 (*mac)->m_buflen = MAC_MAX_LABEL_BUF_LEN;

 return (0);
}

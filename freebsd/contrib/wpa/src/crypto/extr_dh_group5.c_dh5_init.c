
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int dh_groups_get (int) ;
 struct wpabuf* dh_init (int ,struct wpabuf**) ;
 int wpabuf_free (struct wpabuf*) ;

void * dh5_init(struct wpabuf **priv, struct wpabuf **publ)
{
 wpabuf_free(*publ);
 *publ = dh_init(dh_groups_get(5), priv);
 if (*publ == ((void*)0))
  return ((void*)0);
 return (void *) 1;
}

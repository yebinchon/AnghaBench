
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;
 int strncat (char*,char const*,int) ;

void
strcat_to_buf (char *buf, int buflen, const char *item_to_add)
{
  if (item_to_add != (char *) ((void*)0) && buf != (char *) ((void*)0))
    {
      if ((strlen (buf) + strlen (item_to_add)) <= buflen)
 strcat (buf, item_to_add);
      else
 strncat (buf, item_to_add, (buflen - strlen (buf)));
    }
}

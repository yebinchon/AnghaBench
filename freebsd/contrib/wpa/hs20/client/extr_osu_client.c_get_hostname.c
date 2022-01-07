
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* os_malloc (int) ;
 int os_memcpy (char*,char const*,int) ;
 char* os_strchr (char const*,char) ;

__attribute__((used)) static char * get_hostname(const char *url)
{
 const char *pos, *end, *end2;
 char *ret;

 if (url == ((void*)0))
  return ((void*)0);

 pos = os_strchr(url, '/');
 if (pos == ((void*)0))
  return ((void*)0);
 pos++;
 if (*pos != '/')
  return ((void*)0);
 pos++;

 end = os_strchr(pos, '/');
 end2 = os_strchr(pos, ':');
 if ((end && end2 && end2 < end) || (!end && end2))
  end = end2;
 if (end)
  end--;
 else {
  end = pos;
  while (*end)
   end++;
  if (end > pos)
   end--;
 }

 ret = os_malloc(end - pos + 2);
 if (ret == ((void*)0))
  return ((void*)0);

 os_memcpy(ret, pos, end - pos + 1);
 ret[end - pos + 1] = '\0';

 return ret;
}

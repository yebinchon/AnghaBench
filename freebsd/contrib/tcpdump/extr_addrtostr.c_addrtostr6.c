
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;


 int APPEND_CHAR (char) ;
 int ENOSPC ;
 int IN6ADDRSZ ;
 int INT16SZ ;
 int addrtostr (int const*,char*,size_t) ;
 int errno ;
 int snprintf (char*,size_t,char*,int) ;
 size_t strlen (char*) ;

const char *
addrtostr6 (const void *src, char *dst, size_t size)
{







  const u_char *srcaddr = (const u_char *)src;
  char *dp;
  size_t space_left, added_space;
  int snprintfed;
  struct {
    int base;
    int len;
  } best, cur;
  uint16_t words [IN6ADDRSZ / INT16SZ];
  int i;





  for (i = 0; i < (IN6ADDRSZ / INT16SZ); i++)
      words[i] = (srcaddr[2*i] << 8) | srcaddr[2*i + 1];

  best.len = 0;
  best.base = -1;
  cur.len = 0;
  cur.base = -1;
  for (i = 0; i < (int)(IN6ADDRSZ / INT16SZ); i++)
  {
    if (words[i] == 0)
    {
      if (cur.base == -1)
           cur.base = i, cur.len = 1;
      else cur.len++;
    }
    else if (cur.base != -1)
    {
      if (best.base == -1 || cur.len > best.len)
         best = cur;
      cur.base = -1;
    }
  }
  if ((cur.base != -1) && (best.base == -1 || cur.len > best.len))
     best = cur;
  if (best.base != -1 && best.len < 2)
     best.base = -1;



  dp = dst;
  space_left = size;
  for (i = 0; i < (int)(IN6ADDRSZ / INT16SZ); i++)
  {


    if (best.base != -1 && i >= best.base && i < (best.base + best.len))
    {
      if (i == best.base)
        { if (space_left == 0) { errno = ENOSPC; return (((void*)0)); } *dp++ = ':'; space_left--; };
      continue;
    }



    if (i != 0)
       { if (space_left == 0) { errno = ENOSPC; return (((void*)0)); } *dp++ = ':'; space_left--; };



    if (i == 6 && best.base == 0 &&
        (best.len == 6 || (best.len == 5 && words[5] == 0xffff)))
    {
      if (!addrtostr(srcaddr+12, dp, space_left))
      {
        errno = ENOSPC;
        return (((void*)0));
      }
      added_space = strlen(dp);
      dp += added_space;
      space_left -= added_space;
      break;
    }
    snprintfed = snprintf (dp, space_left, "%x", words[i]);
    if (snprintfed < 0)
        return (((void*)0));
    if ((size_t) snprintfed >= space_left)
    {
        errno = ENOSPC;
        return (((void*)0));
    }
    dp += snprintfed;
    space_left -= snprintfed;
  }



  if (best.base != -1 && (best.base + best.len) == (IN6ADDRSZ / INT16SZ))
     { if (space_left == 0) { errno = ENOSPC; return (((void*)0)); } *dp++ = ':'; space_left--; };
  { if (space_left == 0) { errno = ENOSPC; return (((void*)0)); } *dp++ = '\0'; space_left--; };

  return (dst);
}

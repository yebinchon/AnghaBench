
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int refid ;


 int LIB_GETBUF (char*) ;
 int memcpy (char*,int *,int) ;
 char const* numtoa (int ) ;
 size_t strlen (char*) ;

const char *
refid_str(
 u_int32 refid,
 int stratum
 )
{
 char * text;
 size_t tlen;

 if (stratum > 1)
  return numtoa(refid);

 LIB_GETBUF(text);
 text[0] = '.';
 memcpy(&text[1], &refid, sizeof(refid));
 text[1 + sizeof(refid)] = '\0';
 tlen = strlen(text);
 text[tlen] = '.';
 text[tlen + 1] = '\0';

 return text;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codestring {int code; char* string1; char* string0; } ;


 size_t LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int errno ;
 struct codestring const* k_st_bits ;
 struct codestring const* peer_st_bits ;
 int snprintf (char*,size_t,char*,char const*,...) ;

__attribute__((used)) static const char *
decode_bitflags(
 int bits,
 const char * sep2,
 const struct codestring * tab,
 size_t tab_ct
 )
{
 const char * sep;
 char * buf;
 char * pch;
 char * lim;
 size_t b;
 int rc;
 int saved_errno;

 saved_errno = errno;
 LIB_GETBUF(buf);
 pch = buf;
 lim = buf + LIB_BUFLENGTH;
 sep = "";

 for (b = 0; b < tab_ct; b++) {
  const char * flagstr;

  if (tab[b].code & bits) {
   flagstr = tab[b].string1;
  } else {
   flagstr = tab[b].string0;
  }

  if (flagstr) {
   size_t avail = lim - pch;
   rc = snprintf(pch, avail, "%s%s", sep,
          flagstr);
   if ((size_t)rc >= avail)
    goto toosmall;
   pch += rc;
   sep = sep2;
  }
 }

 return buf;

    toosmall:
 snprintf(buf, LIB_BUFLENGTH,
   "decode_bitflags(%s) can't decode 0x%x in %d bytes",
   (tab == peer_st_bits)
       ? "peer_st"
       :





        "",
   bits, (int)LIB_BUFLENGTH);
 errno = saved_errno;

 return buf;
}

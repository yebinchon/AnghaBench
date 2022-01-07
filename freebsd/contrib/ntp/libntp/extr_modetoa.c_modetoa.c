
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t COUNTOF (char const* const*) ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int snprintf (char*,int ,char*,size_t) ;

const char *
modetoa(
 size_t mode
 )
{
 char *bp;
 static const char * const modestrings[] = {
  "unspec",
  "sym_active",
  "sym_passive",
  "client",
  "server",
  "broadcast",
  "control",
  "private",
  "bclient",
 };

 if (mode >= COUNTOF(modestrings)) {
  LIB_GETBUF(bp);
  snprintf(bp, LIB_BUFLENGTH, "mode#%zu", mode);
  return bp;
 }

 return modestrings[mode];
}

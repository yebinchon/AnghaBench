
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerr {int code; char const* name; char* explain; } ;
typedef int llvm_regex_t ;
typedef int convbuf ;


 int REG_ATOI ;
 int REG_ITOA ;
 int assert (int) ;
 int llvm_strlcpy (char*,char const*,size_t) ;
 char* regatoi (int const*,char*,int) ;
 struct rerr* rerrs ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char const*) ;

size_t
llvm_regerror(int errcode, const llvm_regex_t *preg, char *errbuf, size_t errbuf_size)
{
 struct rerr *r;
 size_t len;
 int target = errcode &~ REG_ITOA;
 const char *s;
 char convbuf[50];

 if (errcode == REG_ATOI)
  s = regatoi(preg, convbuf, sizeof convbuf);
 else {
  for (r = rerrs; r->code != 0; r++)
   if (r->code == target)
    break;

  if (errcode&REG_ITOA) {
   if (r->code != 0) {
    assert(strlen(r->name) < sizeof(convbuf));
    (void) llvm_strlcpy(convbuf, r->name, sizeof convbuf);
   } else
    (void)snprintf(convbuf, sizeof convbuf,
        "REG_0x%x", target);
   s = convbuf;
  } else
   s = r->explain;
 }

 len = strlen(s) + 1;
 if (errbuf_size > 0) {
  llvm_strlcpy(errbuf, s, errbuf_size);
 }

 return(len);
}

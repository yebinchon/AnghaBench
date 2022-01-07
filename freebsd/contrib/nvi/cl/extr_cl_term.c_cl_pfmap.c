
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seq_t ;
typedef int name ;
typedef int SCR ;
typedef int CHAR_T ;


 int CHAR2INT (int *,char*,scalar_t__,int *,size_t) ;
 int L (char*) ;
 int MEMCPY (int *,int *,size_t) ;
 int M_ERR ;
 int SEQ_NOOVERWRITE ;
 int SEQ_SCREEN ;
 int SIZE (int *) ;
 size_t SPRINTF (int *,int ,int ,int) ;
 scalar_t__ STRTOL (int *,int *,int) ;
 int msgq_wstr (int *,int ,int *,char*) ;
 int seq_set (int *,int *,size_t,int *,scalar_t__,int *,size_t,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (char*) ;
 char* tigetstr (char*) ;

__attribute__((used)) static int
cl_pfmap(SCR *sp, seq_t stype, CHAR_T *from, size_t flen, CHAR_T *to, size_t tlen)
{
 size_t nlen;
 char *p;
 char name[64];
 CHAR_T keyname[64];
 CHAR_T ts[20];
 CHAR_T *wp;
 size_t wlen;

 (void)snprintf(name, sizeof(name), "kf%d",
   (int)STRTOL(from+1,((void*)0),10));
 if ((p = tigetstr(name)) == ((void*)0) ||
     p == (char *)-1 || strlen(p) == 0)
  p = ((void*)0);
 if (p == ((void*)0)) {
  msgq_wstr(sp, M_ERR, from, "233|This terminal has no %s key");
  return (1);
 }

 nlen = SPRINTF(keyname,
     SIZE(keyname), L("function key %d"),
   (int)STRTOL(from+1,((void*)0),10));
 CHAR2INT(sp, p, strlen(p), wp, wlen);
 MEMCPY(ts, wp, wlen);
 return (seq_set(sp, keyname, nlen,
     ts, strlen(p), to, tlen, stype, SEQ_NOOVERWRITE | SEQ_SCREEN));
}

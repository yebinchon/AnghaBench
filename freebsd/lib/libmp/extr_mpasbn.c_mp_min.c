
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 int MPERR (char*) ;
 int * _dtom (char*,char*) ;
 int _mfree (char*,int *) ;
 int _movem (char*,int *,int *) ;
 char* fgetln (int ,size_t*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int stdin ;

void
mp_min(MINT *mp)
{
 MINT *rmp;
 char *line, *nline;
 size_t linelen;

 line = fgetln(stdin, &linelen);
 if (line == ((void*)0))
  MPERR(("min"));
 nline = malloc(linelen + 1);
 if (nline == ((void*)0))
  MPERR(("min"));
 memcpy(nline, line, linelen);
 nline[linelen] = '\0';
 rmp = _dtom("min", nline);
 _movem("min", rmp, mp);
 _mfree("min", rmp);
 free(nline);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tbuf ;
typedef int obuf ;
typedef int nbuf ;


 int EVNT_KERN ;
 int STA_FMT ;
 int report_event (int ,int *,char*) ;
 int snprintb (char*,int,int ,int) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void
sync_status(const char *what, int ostatus, int nstatus)
{
 char obuf[256], nbuf[256], tbuf[1024];




 snprintf(obuf, sizeof(obuf), "%04x", ostatus);
 snprintf(nbuf, sizeof(nbuf), "%04x", nstatus);

 snprintf(tbuf, sizeof(tbuf), "%s status: %s -> %s", what, obuf, nbuf);
 report_event(EVNT_KERN, ((void*)0), tbuf);
}

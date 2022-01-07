
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumpdates {int dd_ddate; int dd_level; int dd_name; } ;


 int DUMPINFMT ;
 int sscanf (char const*,int ,int ,int *,char*) ;
 int unctime (char*) ;

__attribute__((used)) static int
makedumpdate(struct dumpdates *ddp, const char *tbuf)
{
 char un_buf[128];

 (void) sscanf(tbuf, DUMPINFMT, ddp->dd_name, &ddp->dd_level, un_buf);
 ddp->dd_ddate = unctime(un_buf);
 if (ddp->dd_ddate < 0)
  return(-1);
 return(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 scalar_t__ fclose (int ) ;
 int ofp ;

int
dba_close(void)
{
 return fclose(ofp) == EOF ? -1 : 0;
}

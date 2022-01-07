
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int doquery (unsigned short,unsigned short,int ,int ,char*,int *,size_t*,char const**) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ numhosts ;

int ntpq_queryhost(unsigned short VARSET, unsigned short association, char *resultbuf, int maxlen)
{
 const char *datap;
 int res;
 size_t dsize;
 u_short rstatus;

 if ( numhosts > 0 )
  res = doquery(VARSET,association,0,0, (char *)0, &rstatus, &dsize, &datap);
 else
  return 0;

 if ( ( res != 0) || ( dsize == 0 ) )
  return 0;

 if ( dsize > maxlen)
  dsize = maxlen;



 memcpy(resultbuf, datap, dsize);

 return dsize;
}

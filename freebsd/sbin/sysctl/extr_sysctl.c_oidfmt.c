
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int buf ;


 int BUFSIZ ;
 int CTL_MAXNAME ;
 int err (int,char*,int,size_t,int ) ;
 int errno ;
 int memcpy (int*,int*,int) ;
 int strcpy (char*,char*) ;
 int sysctl (int*,int,int *,size_t*,int ,int ) ;

__attribute__((used)) static int
oidfmt(int *oid, int len, char *fmt, u_int *kind)
{
 int qoid[CTL_MAXNAME+2];
 u_char buf[BUFSIZ];
 int i;
 size_t j;

 qoid[0] = 0;
 qoid[1] = 4;
 memcpy(qoid + 2, oid, len * sizeof(int));

 j = sizeof(buf);
 i = sysctl(qoid, len + 2, buf, &j, 0, 0);
 if (i)
  err(1, "sysctl fmt %d %zu %d", i, j, errno);

 if (kind)
  *kind = *(u_int *)buf;

 if (fmt)
  strcpy(fmt, (char *)(buf + sizeof(u_int)));
 return (0);
}

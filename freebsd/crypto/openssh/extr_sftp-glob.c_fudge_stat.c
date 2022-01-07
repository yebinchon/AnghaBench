
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {int conn; } ;
typedef int Attrib ;


 int attrib_to_stat (int *,struct stat*) ;
 TYPE_1__ cur ;
 int * do_stat (int ,char*,int) ;

__attribute__((used)) static int
fudge_stat(const char *path, struct stat *st)
{
 Attrib *a;

 if (!(a = do_stat(cur.conn, (char *)path, 1)))
  return(-1);

 attrib_to_stat(a, st);

 return(0);
}

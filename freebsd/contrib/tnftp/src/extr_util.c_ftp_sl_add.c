
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringList ;


 int err (int,char*,char*) ;
 int sl_add (int *,char*) ;

void
ftp_sl_add(StringList *sl, char *i)
{

 if (sl_add(sl, i) == -1)
  err(1, "Unable to add `%s' to stringlist", i);
}

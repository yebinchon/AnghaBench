
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int size; } ;
typedef TYPE_1__ DBT ;


 int YP_TRUE ;
 int dbp ;
 int yp_errno ;
 int yp_put_record (int ,TYPE_1__*,TYPE_1__*,int ) ;

int
ypxfr_foreach(int status, char *key, int keylen, char *val, int vallen,
    char *data)
{
 DBT dbkey, dbval;

 if (status != YP_TRUE)
  return (status);







 if (keylen) {
  dbkey.data = key;
  dbkey.size = keylen;
 } else {
  dbkey.data = "";
  dbkey.size = 1;
 }
 if (vallen) {
  dbval.data = val;
  dbval.size = vallen;
 } else {
  dbval.data = "";
  dbval.size = 1;
 }

 if (yp_put_record(dbp, &dbkey, &dbval, 0) != YP_TRUE)
  return(yp_errno);

 return (0);
}

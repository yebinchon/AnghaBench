
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_14__ {int (* smdb_cursor ) (TYPE_8__*,TYPE_2__**,int ) ;} ;
struct TYPE_13__ {int (* smdbc_get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;int (* smdbc_close ) (TYPE_2__*) ;} ;
struct TYPE_12__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ SMDB_DBENT ;
typedef TYPE_2__ SMDB_CURSOR ;


 TYPE_8__* Db ;
 int SMDBE_LAST_ENTRY ;
 int SMDBE_OK ;
 int SMDB_CURSOR_GET_NEXT ;
 int SM_TIME_DEFAULT ;
 int VIT ;
 char* ctime (scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int memset (TYPE_1__*,char,int) ;
 int sm_errstring (int) ;
 int sm_io_fprintf (int ,int ,char*,int,...) ;
 int smioerr ;
 int smioout ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int stub1 (TYPE_8__*,TYPE_2__**,int ) ;
 int stub2 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;

__attribute__((used)) static void
listdb()
{
 int result;
 time_t t;
 SMDB_CURSOR *cursor = ((void*)0);
 SMDB_DBENT db_key, db_value;

 memset(&db_key, '\0', sizeof db_key);
 memset(&db_value, '\0', sizeof db_value);

 result = Db->smdb_cursor(Db, &cursor, 0);
 if (result != SMDBE_OK)
 {
  sm_io_fprintf(smioerr, SM_TIME_DEFAULT,
         "vacation: set cursor: %s\n",
         sm_errstring(result));
  return;
 }

 while ((result = cursor->smdbc_get(cursor, &db_key, &db_value,
        SMDB_CURSOR_GET_NEXT)) == SMDBE_OK)
 {
  char *timestamp;


  if (db_key.size == strlen(VIT) + 1 &&
      strncmp((char *)db_key.data, VIT,
       (int)db_key.size - 1) == 0)
   continue;


  if (db_value.size != sizeof t)
  {
   sm_io_fprintf(smioerr, SM_TIME_DEFAULT,
          "vacation: %.*s invalid time stamp\n",
          (int) db_key.size, (char *) db_key.data);
   continue;
  }

  memcpy(&t, db_value.data, sizeof t);

  if (db_key.size > 40)
   db_key.size = 40;

  if (t <= 0)
  {

   timestamp = "(exclusion)\n";
  }
  else
  {
   timestamp = ctime(&t);
  }
  sm_io_fprintf(smioout, SM_TIME_DEFAULT, "%-40.*s %-10s",
         (int) db_key.size, (char *) db_key.data,
         timestamp);

  memset(&db_key, '\0', sizeof db_key);
  memset(&db_value, '\0', sizeof db_value);
 }

 if (result != SMDBE_OK && result != SMDBE_LAST_ENTRY)
 {
  sm_io_fprintf(smioerr, SM_TIME_DEFAULT,
         "vacation: get value at cursor: %s\n",
         sm_errstring(result));
  if (cursor != ((void*)0))
  {
   (void) cursor->smdbc_close(cursor);
   cursor = ((void*)0);
  }
  return;
 }
 (void) cursor->smdbc_close(cursor);
 cursor = ((void*)0);
}

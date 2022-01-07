
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {char* uuid_str; char* name; int guid; } ;


 int fprintf (int ,char*,char*,char*,int) ;
 TYPE_1__* guid_tbl ;
 size_t nitems (TYPE_1__*) ;
 int stderr ;
 int uuid_from_string (char*,int *,scalar_t__*) ;
 scalar_t__ uuid_s_bad_version ;
 scalar_t__ uuid_s_ok ;

__attribute__((used)) static void
efi_guid_tbl_compile(void)
{
 size_t i;
 uint32_t status;
 static int done = 0;

 if (done)
  return;
 for (i = 0; i < nitems(guid_tbl); i++) {
  uuid_from_string(guid_tbl[i].uuid_str, &guid_tbl[i].guid,
      &status);

  if (status != uuid_s_ok && status != uuid_s_bad_version)
   fprintf(stderr, "Can't convert %s to a uuid for %s: %d\n",
       guid_tbl[i].uuid_str, guid_tbl[i].name, (int)status);
 }
 done = 1;
}

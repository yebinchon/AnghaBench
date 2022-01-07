
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; int revision; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int locale_independent_strtol (int *,char const*,char const**) ;
 int svn__base36toui64 (char const**,char const*) ;

__attribute__((used)) static svn_boolean_t
txn_id_parse(svn_fs_fs__id_part_t *txn_id,
             const char *data)
{
  const char *end;
  if (!locale_independent_strtol(&txn_id->revision, data, &end))
    return FALSE;

  data = end;
  if (*data != '-')
    return FALSE;

  ++data;
  txn_id->number = svn__base36toui64(&data, data);
  return *data == '\0';
}

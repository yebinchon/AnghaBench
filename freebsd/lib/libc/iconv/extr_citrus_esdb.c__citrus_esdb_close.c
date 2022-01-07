
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_esdb {int db_num_charsets; TYPE_1__* db_variable; scalar_t__ db_len_variable; TYPE_1__* db_encname; TYPE_1__* db_charsets; } ;
struct TYPE_2__ {struct TYPE_2__* ec_csname; } ;


 int free (TYPE_1__*) ;

void
_citrus_esdb_close(struct _citrus_esdb *db)
{

 for (int i = 0; i < db->db_num_charsets; i++)
  free(db->db_charsets[i].ec_csname);
 db->db_num_charsets = 0;
 free(db->db_charsets); db->db_charsets = ((void*)0);
 free(db->db_encname); db->db_encname = ((void*)0);
 db->db_len_variable = 0;
 free(db->db_variable); db->db_variable = ((void*)0);
}

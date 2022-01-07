
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_table_entry {int nte_link; int nte_name; } ;
typedef int HashValue ;


 short CAPTABSIZE ;
 short HASHTABSIZE ;
 int hash_function (int ) ;
 int printf (char*,int,short) ;

__attribute__((used)) static void
_nc_make_hash_table(struct name_table_entry *table,
      HashValue * hash_table)
{
    short i;
    int hashvalue;
    int collisions = 0;

    for (i = 0; i < HASHTABSIZE; i++) {
 hash_table[i] = -1;
    }
    for (i = 0; i < CAPTABSIZE; i++) {
 hashvalue = hash_function(table[i].nte_name);

 if (hash_table[hashvalue] >= 0)
     collisions++;

 if (hash_table[hashvalue] != 0)
     table[i].nte_link = hash_table[hashvalue];
 hash_table[hashvalue] = i;
    }

    printf("/* %d collisions out of %d entries */\n", collisions, CAPTABSIZE);
}

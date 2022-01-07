
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ name; } ;
struct TYPE_7__ {char* name; TYPE_1__* hash; TYPE_4__** options; } ;
struct TYPE_6__ {int hash_count; } ;


 int DEFAULT_HASH_SIZE ;
 int add_hash (TYPE_1__*,unsigned char const*,int ,unsigned char*) ;
 TYPE_4__* dhcp_options ;
 TYPE_3__ dhcp_universe ;
 int error (char*) ;
 TYPE_1__* new_hash () ;
 TYPE_1__ universe_hash ;

void
initialize_universes(void)
{
 int i;

 dhcp_universe.name = "dhcp";
 dhcp_universe.hash = new_hash();
 if (!dhcp_universe.hash)
  error("Can't allocate dhcp option hash table.");
 for (i = 0; i < 256; i++) {
  dhcp_universe.options[i] = &dhcp_options[i];
  add_hash(dhcp_universe.hash,
      (const unsigned char *)dhcp_options[i].name, 0,
      (unsigned char *)&dhcp_options[i]);
 }
 universe_hash.hash_count = DEFAULT_HASH_SIZE;
 add_hash(&universe_hash,
     (const unsigned char *)dhcp_universe.name, 0,
     (unsigned char *)&dhcp_universe);
}

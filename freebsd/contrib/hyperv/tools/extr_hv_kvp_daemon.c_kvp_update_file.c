
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int dummy; } ;
struct TYPE_2__ {int num_records; int records; int fname; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int KVP_LOG (int ,char*,int) ;
 int LOG_ERR ;
 int exit (int ) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 size_t fwrite (int ,int,int ,int *) ;
 int kvp_acquire_lock (int) ;
 TYPE_1__* kvp_pools ;
 int kvp_release_lock (int) ;

__attribute__((used)) static void
kvp_update_file(int pool)
{
 FILE *filep;
 size_t bytes_written;

 kvp_acquire_lock(pool);

 filep = fopen(kvp_pools[pool].fname, "w");
 if (!filep) {
  kvp_release_lock(pool);
  KVP_LOG(LOG_ERR, "Failed to open file, pool: %d\n", pool);
  exit(EXIT_FAILURE);
 }

 bytes_written = fwrite(kvp_pools[pool].records,
  sizeof(struct kvp_record),
  kvp_pools[pool].num_records, filep);

 if (ferror(filep) || fclose(filep)) {
  kvp_release_lock(pool);
  KVP_LOG(LOG_ERR, "Failed to write file, pool: %d\n", pool);
  exit(EXIT_FAILURE);
 }

 kvp_release_lock(pool);
}

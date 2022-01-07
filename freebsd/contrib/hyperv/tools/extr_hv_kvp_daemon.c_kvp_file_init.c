
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int dummy; } ;
struct TYPE_2__ {char* fname; int pool_fd; int num_blocks; size_t num_records; struct kvp_record* records; } ;
typedef int FILE ;


 scalar_t__ EEXIST ;
 scalar_t__ EISDIR ;
 int ENTRIES_PER_BLOCK ;
 int EXIT_FAILURE ;
 int HV_KVP_POOL_COUNT ;
 int KVP_LOG (int ,char*,...) ;
 int LOG_ERR ;
 int MAX_FILE_NAME ;
 int O_CREAT ;
 int O_RDWR ;
 int POOL_DIR ;
 int POOL_DIR_MODE ;
 int POOL_FILE_MODE ;
 int chmod (int ,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fchmod (int,int ) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fread (struct kvp_record*,int,int,int *) ;
 TYPE_1__* kvp_pools ;
 struct kvp_record* malloc (int) ;
 scalar_t__ mkdir (int ,int ) ;
 int open (char*,int,int ) ;
 struct kvp_record* realloc (struct kvp_record*,int) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static int
kvp_file_init(void)
{
 int fd;
 FILE *filep;
 size_t records_read;
 char *fname;
 struct kvp_record *record;
 struct kvp_record *readp;
 int num_blocks;
 int i;
 int alloc_unit = sizeof(struct kvp_record) * ENTRIES_PER_BLOCK;

 if (mkdir(POOL_DIR, POOL_DIR_MODE) < 0 &&
     (errno != EEXIST && errno != EISDIR)) {
  KVP_LOG(LOG_ERR, " Failed to create /var/db/hyperv/pool\n");
  exit(EXIT_FAILURE);
 }
 chmod(POOL_DIR, POOL_DIR_MODE);

 for (i = 0; i < HV_KVP_POOL_COUNT; i++)
 {
  fname = kvp_pools[i].fname;
  records_read = 0;
  num_blocks = 1;
  snprintf(fname, MAX_FILE_NAME, "/var/db/hyperv/pool/.kvp_pool_%d", i);
  fd = open(fname, O_RDWR | O_CREAT, POOL_FILE_MODE);

  if (fd == -1) {
   return (1);
  }
  fchmod(fd, POOL_FILE_MODE);


  filep = fopen(fname, "r");
  if (!filep) {
   close(fd);
   return (1);
  }

  record = malloc(alloc_unit * num_blocks);
  if (record == ((void*)0)) {
   close(fd);
   fclose(filep);
   return (1);
  }
  for ( ; ; )
  {
   readp = &record[records_read];
   records_read += fread(readp, sizeof(struct kvp_record),
    ENTRIES_PER_BLOCK,
    filep);

   if (ferror(filep)) {
    KVP_LOG(LOG_ERR, "Failed to read file, pool: %d\n",
        i);
    exit(EXIT_FAILURE);
   }

   if (!feof(filep)) {



    num_blocks++;
    record = realloc(record, alloc_unit *
     num_blocks);
    if (record == ((void*)0)) {
     close(fd);
     fclose(filep);
     return (1);
    }
    continue;
   }
   break;
  }
  kvp_pools[i].pool_fd = fd;
  kvp_pools[i].num_blocks = num_blocks;
  kvp_pools[i].records = record;
  kvp_pools[i].num_records = records_read;
  fclose(filep);
 }

 return (0);
}

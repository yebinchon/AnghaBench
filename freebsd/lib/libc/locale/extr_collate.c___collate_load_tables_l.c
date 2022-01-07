
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlocale_collate {int __collate_load_error; int * large_pri_table; int * chain_pri_table; int ** subst_table; void* char_pri_table; TYPE_1__* info; } ;
struct stat {int st_size; } ;
typedef int info ;
typedef int collate_subst_t ;
typedef int collate_large_t ;
struct TYPE_2__ {int directive_count; int chain_count; int large_count; int* subst_count; } ;
typedef TYPE_1__ collate_info_t ;
typedef int collate_char_t ;
typedef int collate_chain_t ;


 int COLLATE_STR_LEN ;
 char* COLLATE_VERSION ;
 int COLL_WEIGHTS_MAX ;
 int EINVAL ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int UCHAR_MAX ;
 int _LDP_CACHE ;
 int _LDP_ERROR ;
 int _LDP_LOADED ;
 int _PathLocale ;
 int _close (int) ;
 scalar_t__ _fstat (int,struct stat*) ;
 int _open (char*,int ) ;
 int asprintf (char**,char*,int ,char const*) ;
 int errno ;
 int free (char*) ;
 char* mmap (int *,int,int ,int ,int,int ) ;
 int munmap (char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
__collate_load_tables_l(const char *encoding, struct xlocale_collate *table)
{
 int i, chains, z;
 char *buf;
 char *TMP;
 char *map;
 collate_info_t *info;
 struct stat sbuf;
 int fd;

 table->__collate_load_error = 1;


 if (strcmp(encoding, "C") == 0 || strcmp(encoding, "POSIX") == 0 ||
     strncmp(encoding, "C.", 2) == 0) {
  return (_LDP_CACHE);
 }

 if (asprintf(&buf, "%s/%s/LC_COLLATE", _PathLocale, encoding) == -1)
  return (_LDP_ERROR);

 if ((fd = _open(buf, O_RDONLY)) < 0) {
  free(buf);
  return (_LDP_ERROR);
 }
 free(buf);
 if (_fstat(fd, &sbuf) < 0) {
  (void) _close(fd);
  return (_LDP_ERROR);
 }
 if (sbuf.st_size < (COLLATE_STR_LEN + sizeof (info))) {
  (void) _close(fd);
  errno = EINVAL;
  return (_LDP_ERROR);
 }
 map = mmap(((void*)0), sbuf.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
 (void) _close(fd);
 if ((TMP = map) == ((void*)0)) {
  return (_LDP_ERROR);
 }

 if (strncmp(TMP, COLLATE_VERSION, COLLATE_STR_LEN) != 0) {
  (void) munmap(map, sbuf.st_size);
  errno = EINVAL;
  return (_LDP_ERROR);
 }
 TMP += COLLATE_STR_LEN;

 info = (void *)TMP;
 TMP += sizeof (*info);

 if ((info->directive_count < 1) ||
     (info->directive_count >= COLL_WEIGHTS_MAX) ||
     ((chains = info->chain_count) < 0)) {
  (void) munmap(map, sbuf.st_size);
  errno = EINVAL;
  return (_LDP_ERROR);
 }

 i = (sizeof (collate_char_t) * (UCHAR_MAX + 1)) +
     (sizeof (collate_chain_t) * chains) +
     (sizeof (collate_large_t) * info->large_count);
 for (z = 0; z < info->directive_count; z++) {
  i += sizeof (collate_subst_t) * info->subst_count[z];
 }
 if (i != (sbuf.st_size - (TMP - map))) {
  (void) munmap(map, sbuf.st_size);
  errno = EINVAL;
  return (_LDP_ERROR);
 }

 table->info = info;
 table->char_pri_table = (void *)TMP;
 TMP += sizeof (collate_char_t) * (UCHAR_MAX + 1);

 for (z = 0; z < info->directive_count; z++) {
  if (info->subst_count[z] > 0) {
   table->subst_table[z] = (void *)TMP;
   TMP += info->subst_count[z] * sizeof (collate_subst_t);
  } else {
   table->subst_table[z] = ((void*)0);
  }
 }

 if (chains > 0) {
  table->chain_pri_table = (void *)TMP;
  TMP += chains * sizeof (collate_chain_t);
 } else
  table->chain_pri_table = ((void*)0);
 if (info->large_count > 0)
  table->large_pri_table = (void *)TMP;
 else
  table->large_pri_table = ((void*)0);

 table->__collate_load_error = 0;
 return (_LDP_LOADED);
}

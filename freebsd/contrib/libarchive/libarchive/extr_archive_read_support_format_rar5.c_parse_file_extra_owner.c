
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef size_t ssize_t ;
typedef int la_int64_t ;
typedef int int64_t ;


 int ARCHIVE_EOF ;
 scalar_t__ ARCHIVE_OK ;
 int OWNER_GROUP_GID ;
 int OWNER_GROUP_NAME ;
 int OWNER_MAXNAMELEN ;
 int OWNER_USER_NAME ;
 int OWNER_USER_UID ;
 int archive_entry_set_gid (struct archive_entry*,int ) ;
 int archive_entry_set_gname (struct archive_entry*,char*) ;
 int archive_entry_set_uid (struct archive_entry*,int ) ;
 int archive_entry_set_uname (struct archive_entry*,char*) ;
 scalar_t__ consume (struct archive_read*,int ) ;
 int memcpy (char*,int const*,size_t) ;
 int read_ahead (struct archive_read*,size_t,int const**) ;
 int read_var (struct archive_read*,int*,int*) ;
 int read_var_sized (struct archive_read*,size_t*,int *) ;

__attribute__((used)) static int parse_file_extra_owner(struct archive_read* a,
    struct archive_entry* e, ssize_t* extra_data_size)
{
 uint64_t flags = 0;
 uint64_t value_size = 0;
 uint64_t id = 0;
 size_t name_len = 0;
 size_t name_size = 0;
 char namebuf[OWNER_MAXNAMELEN];
 const uint8_t* p;

 if(!read_var(a, &flags, &value_size))
  return ARCHIVE_EOF;
 if(ARCHIVE_OK != consume(a, (int64_t)value_size))
  return ARCHIVE_EOF;
 *extra_data_size -= value_size;

 if ((flags & OWNER_USER_NAME) != 0) {
  if(!read_var_sized(a, &name_size, ((void*)0)))
   return ARCHIVE_EOF;
  *extra_data_size -= name_size + 1;

  if(!read_ahead(a, name_size, &p))
   return ARCHIVE_EOF;

  if (name_size >= OWNER_MAXNAMELEN) {
   name_len = OWNER_MAXNAMELEN - 1;
  } else {
   name_len = name_size;
  }

  memcpy(namebuf, p, name_len);
  namebuf[name_len] = 0;
  if(ARCHIVE_OK != consume(a, (int64_t)name_size))
   return ARCHIVE_EOF;

  archive_entry_set_uname(e, namebuf);
 }
 if ((flags & OWNER_GROUP_NAME) != 0) {
  if(!read_var_sized(a, &name_size, ((void*)0)))
   return ARCHIVE_EOF;
  *extra_data_size -= name_size + 1;

  if(!read_ahead(a, name_size, &p))
   return ARCHIVE_EOF;

  if (name_size >= OWNER_MAXNAMELEN) {
   name_len = OWNER_MAXNAMELEN - 1;
  } else {
   name_len = name_size;
  }

  memcpy(namebuf, p, name_len);
  namebuf[name_len] = 0;
  if(ARCHIVE_OK != consume(a, (int64_t)name_size))
   return ARCHIVE_EOF;

  archive_entry_set_gname(e, namebuf);
 }
 if ((flags & OWNER_USER_UID) != 0) {
  if(!read_var(a, &id, &value_size))
   return ARCHIVE_EOF;
  if(ARCHIVE_OK != consume(a, (int64_t)value_size))
   return ARCHIVE_EOF;
  *extra_data_size -= value_size;

  archive_entry_set_uid(e, (la_int64_t)id);
 }
 if ((flags & OWNER_GROUP_GID) != 0) {
  if(!read_var(a, &id, &value_size))
   return ARCHIVE_EOF;
  if(ARCHIVE_OK != consume(a, (int64_t)value_size))
   return ARCHIVE_EOF;
  *extra_data_size -= value_size;

  archive_entry_set_gid(e, (la_int64_t)id);
 }
 return ARCHIVE_OK;
}

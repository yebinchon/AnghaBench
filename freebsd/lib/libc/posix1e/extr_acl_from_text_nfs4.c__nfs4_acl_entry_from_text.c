
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_t ;
typedef int acl_entry_t ;


 scalar_t__ ACL_BRAND_NFS4 ;
 int EINVAL ;
 scalar_t__ _entry_brand (int ) ;
 int acl_create_entry (int *,int *) ;
 int acl_delete_entry (int ,int ) ;
 int assert (int) ;
 int errno ;
 scalar_t__ number_of_colons (char*) ;
 int parse_access_mask (char*,int ) ;
 int parse_appended_id (char*,int ) ;
 int parse_entry_type (char*,int ) ;
 int parse_flags (char*,int ) ;
 int parse_qualifier (char*,int ,int*) ;
 int parse_tag (char*,int ,int*) ;
 char* string_skip_whitespace (char*) ;
 char* strsep (char**,char*) ;
 int warnx (char*,char*) ;

int
_nfs4_acl_entry_from_text(acl_t aclp, char *str)
{
 int error, need_qualifier;
 acl_entry_t entry;
 char *field, *qualifier_field;

 error = acl_create_entry(&aclp, &entry);
 if (error)
  return (error);

 assert(_entry_brand(entry) == ACL_BRAND_NFS4);

 if (str == ((void*)0))
  goto truncated_entry;
 field = strsep(&str, ":");

 field = string_skip_whitespace(field);
 if ((*field == '\0') && (!str)) {




  return (0);
 }

 error = parse_tag(field, entry, &need_qualifier);
 if (error)
  goto malformed_field;

 if (need_qualifier) {
  if (str == ((void*)0))
   goto truncated_entry;
  qualifier_field = field = strsep(&str, ":");
  error = parse_qualifier(field, entry, &need_qualifier);
  if (error)
   goto malformed_field;
 }

 if (str == ((void*)0))
  goto truncated_entry;
 field = strsep(&str, ":");
 error = parse_access_mask(field, entry);
 if (error)
  goto malformed_field;

 if (str == ((void*)0))
  goto truncated_entry;

 if (number_of_colons(str) > 0) {
  field = strsep(&str, ":");
  error = parse_flags(field, entry);
  if (error)
   goto malformed_field;
 }

 if (str == ((void*)0))
  goto truncated_entry;
 field = strsep(&str, ":");
 error = parse_entry_type(field, entry);
 if (error)
  goto malformed_field;

 if (need_qualifier) {
  if (str == ((void*)0)) {
   warnx("malformed ACL: unknown user or group name "
       "\"%s\"", qualifier_field);
   goto truncated_entry;
  }

  error = parse_appended_id(str, entry);
  if (error)
   goto malformed_field;
 }

 return (0);

truncated_entry:
malformed_field:
 acl_delete_entry(aclp, entry);
 errno = EINVAL;
 return (-1);
}

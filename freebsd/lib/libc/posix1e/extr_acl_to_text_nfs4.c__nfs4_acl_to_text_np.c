
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef TYPE_2__* acl_t ;
typedef int acl_entry_t ;
struct TYPE_5__ {int acl_cnt; } ;
struct TYPE_6__ {TYPE_1__ ats_acl; } ;


 int ACL_FIRST_ENTRY ;
 int ACL_NEXT_ENTRY ;
 int EINVAL ;
 int MAX_ENTRY_LENGTH ;
 int acl_get_entry (TYPE_2__* const,int,int *) ;
 int assert (int) ;
 int errno ;
 int format_entry (char*,int,int ,int) ;
 int free (char*) ;
 char* malloc (int) ;
 char* strdup (char*) ;
 int strlen (char*) ;

char *
_nfs4_acl_to_text_np(const acl_t aclp, ssize_t *len_p, int flags)
{
 int error, off = 0, size, entry_id = ACL_FIRST_ENTRY;
 char *str;
 acl_entry_t entry;

 if (aclp->ats_acl.acl_cnt == 0)
  return strdup("");

 size = aclp->ats_acl.acl_cnt * MAX_ENTRY_LENGTH;
 str = malloc(size);
 if (str == ((void*)0))
  return (((void*)0));

 while (acl_get_entry(aclp, entry_id, &entry) == 1) {
  entry_id = ACL_NEXT_ENTRY;

  assert(off < size);

  error = format_entry(str + off, size - off, entry, flags);
  if (error) {
   free(str);
   errno = EINVAL;
   return (((void*)0));
  }

  off = strlen(str);
 }

 assert(off < size);
 str[off] = '\0';

 if (len_p != ((void*)0))
  *len_p = off;

 return (str);
}

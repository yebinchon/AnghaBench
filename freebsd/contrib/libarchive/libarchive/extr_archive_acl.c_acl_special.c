
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl {int mode; } ;




 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;


__attribute__((used)) static int
acl_special(struct archive_acl *acl, int type, int permset, int tag)
{
 if (type == ARCHIVE_ENTRY_ACL_TYPE_ACCESS
     && ((permset & ~007) == 0)) {
  switch (tag) {
  case 128:
   acl->mode &= ~0700;
   acl->mode |= (permset & 7) << 6;
   return (0);
  case 130:
   acl->mode &= ~0070;
   acl->mode |= (permset & 7) << 3;
   return (0);
  case 129:
   acl->mode &= ~0007;
   acl->mode |= permset & 7;
   return (0);
  }
 }
 return (1);
}

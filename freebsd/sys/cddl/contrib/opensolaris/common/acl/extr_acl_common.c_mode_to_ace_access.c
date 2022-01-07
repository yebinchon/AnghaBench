
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mode_t ;
typedef scalar_t__ boolean_t ;


 int ACE_APPEND_DATA ;
 int ACE_DELETE_CHILD ;
 int ACE_EXECUTE ;
 int ACE_READ_ACL ;
 int ACE_READ_ATTRIBUTES ;
 int ACE_READ_DATA ;
 int ACE_WRITE_ACL ;
 int ACE_WRITE_DATA ;
 int S_IROTH ;
 int S_IWOTH ;
 int S_IXOTH ;
 int access_mask_set (int,int,int,int) ;

__attribute__((used)) static uint32_t
mode_to_ace_access(mode_t mode, boolean_t isdir, int isowner, int isallow)
{
 uint32_t access = 0;
 int haswriteperm = 0;
 int hasreadperm = 0;

 if (isallow) {
  haswriteperm = (mode & S_IWOTH);
  hasreadperm = (mode & S_IROTH);
 } else {
  haswriteperm = !(mode & S_IWOTH);
  hasreadperm = !(mode & S_IROTH);
 }







 access = access_mask_set(haswriteperm, hasreadperm, isowner, isallow);

 if (isallow) {
  access |= ACE_READ_ACL | ACE_READ_ATTRIBUTES;
  if (isowner)
   access |= ACE_WRITE_ACL;
 } else {
  if (! isowner)
   access |= ACE_WRITE_ACL;
 }


 if (mode & S_IROTH) {
  access |= ACE_READ_DATA;
 }

 if (mode & S_IWOTH) {
  access |= ACE_WRITE_DATA |
      ACE_APPEND_DATA;
  if (isdir)
   access |= ACE_DELETE_CHILD;
 }

 if (mode & S_IXOTH) {
  access |= ACE_EXECUTE;
 }

 return (access);
}

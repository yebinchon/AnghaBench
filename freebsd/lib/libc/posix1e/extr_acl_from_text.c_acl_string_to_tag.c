
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_tag_t ;


 int ACL_GROUP ;
 int ACL_GROUP_OBJ ;
 int ACL_MASK ;
 int ACL_OTHER ;
 int ACL_USER ;
 int ACL_USER_OBJ ;
 int strcmp (char*,char*) ;

__attribute__((used)) static acl_tag_t
acl_string_to_tag(char *tag, char *qualifier)
{

 if (*qualifier == '\0') {
  if ((!strcmp(tag, "user")) || (!strcmp(tag, "u"))) {
   return (ACL_USER_OBJ);
  } else
  if ((!strcmp(tag, "group")) || (!strcmp(tag, "g"))) {
   return (ACL_GROUP_OBJ);
  } else
  if ((!strcmp(tag, "mask")) || (!strcmp(tag, "m"))) {
   return (ACL_MASK);
  } else
  if ((!strcmp(tag, "other")) || (!strcmp(tag, "o"))) {
   return (ACL_OTHER);
  } else
   return(-1);
 } else {
  if ((!strcmp(tag, "user")) || (!strcmp(tag, "u"))) {
   return(ACL_USER);
  } else
  if ((!strcmp(tag, "group")) || (!strcmp(tag, "g"))) {
   return(ACL_GROUP);
  } else
   return(-1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uid_t ;
typedef int mode_t ;
typedef int caddr_t ;
struct TYPE_9__ {int a_type; int a_perm; void* a_id; } ;
typedef TYPE_1__ aclent_t ;
struct TYPE_10__ {int a_flags; void* a_who; void* a_access_mask; int a_type; } ;
typedef TYPE_2__ ace_t ;


 int ACE_ACCESS_DENIED_ACE_TYPE ;
 int ACE_DIRECTORY_INHERIT_ACE ;
 int ACE_EVERYONE ;
 int ACE_FILE_INHERIT_ACE ;
 int ACE_GROUP ;
 int ACE_IDENTIFIER_GROUP ;
 int ACE_INHERIT_ONLY_ACE ;
 int ACE_OWNER ;
 int ACL_DEFAULT ;
 int B_FALSE ;
 int B_TRUE ;
 int CLASS_OBJ ;
 int EINVAL ;
 int GROUP ;
 int GROUP_OBJ ;
 int OTHER_OBJ ;
 int USER ;
 int USER_OBJ ;
 int ace_make_deny (TYPE_2__*,TYPE_2__*,int,int ) ;
 int cacl_free (TYPE_2__*,int) ;
 scalar_t__ cacl_malloc (void**,int) ;
 int cmp2acls ;
 int ksort (int ,int,int,int ) ;
 int ln_aent_preprocess (TYPE_1__*,int,int*,int*,int*,int*,int*) ;
 void* mode_to_ace_access (int,int,int,int) ;

__attribute__((used)) static int
ln_aent_to_ace(aclent_t *aclent, int n, ace_t **acepp, int *rescount, int isdir)
{
 int error = 0;
 mode_t mask;
 int numuser, numgroup, needsort;
 int resultsize = 0;
 int i, groupi = 0, skip;
 ace_t *acep, *result = ((void*)0);
 int hasmask;

 error = ln_aent_preprocess(aclent, n, &hasmask, &mask,
     &numuser, &numgroup, &needsort);
 if (error != 0)
  goto out;


 resultsize = n * 2;
 if (hasmask) {





  resultsize += numuser + numgroup;

  resultsize -= 2;
 }


 if (needsort)
  ksort((caddr_t)aclent, n, sizeof (aclent_t), cmp2acls);

 if (cacl_malloc((void **)&result, resultsize * sizeof (ace_t)) != 0)
  goto out;

 acep = result;

 for (i = 0; i < n; i++) {




  if (aclent[i].a_type & CLASS_OBJ)
   continue;


  if ((hasmask) &&
      (aclent[i].a_type & (USER | GROUP | GROUP_OBJ))) {
   acep->a_type = ACE_ACCESS_DENIED_ACE_TYPE;
   acep->a_flags = 0;
   if (aclent[i].a_type & GROUP_OBJ) {
    acep->a_who = (uid_t)-1;
    acep->a_flags |=
        (ACE_IDENTIFIER_GROUP|ACE_GROUP);
   } else if (aclent[i].a_type & USER) {
    acep->a_who = aclent[i].a_id;
   } else {
    acep->a_who = aclent[i].a_id;
    acep->a_flags |= ACE_IDENTIFIER_GROUP;
   }
   if (aclent[i].a_type & ACL_DEFAULT) {
    acep->a_flags |= ACE_INHERIT_ONLY_ACE |
        ACE_FILE_INHERIT_ACE |
        ACE_DIRECTORY_INHERIT_ACE;
   }






   acep->a_access_mask = mode_to_ace_access((mask ^ 07),
       isdir, 0, 0);
   acep += 1;
  }


  acep->a_access_mask = mode_to_ace_access(aclent[i].a_perm,
      isdir, aclent[i].a_type & USER_OBJ, 1);


  if (aclent[i].a_type & ACL_DEFAULT) {
   acep->a_flags |= ACE_INHERIT_ONLY_ACE |
       ACE_FILE_INHERIT_ACE |
       ACE_DIRECTORY_INHERIT_ACE;
  }
  if (aclent[i].a_type & USER_OBJ) {
   acep->a_who = (uid_t)-1;
   acep->a_flags |= ACE_OWNER;
   ace_make_deny(acep, acep + 1, isdir, B_TRUE);
   acep += 2;
  } else if (aclent[i].a_type & USER) {
   acep->a_who = aclent[i].a_id;
   ace_make_deny(acep, acep + 1, isdir, B_FALSE);
   acep += 2;
  } else if (aclent[i].a_type & (GROUP_OBJ | GROUP)) {
   if (aclent[i].a_type & GROUP_OBJ) {
    acep->a_who = (uid_t)-1;
    acep->a_flags |= ACE_GROUP;
   } else {
    acep->a_who = aclent[i].a_id;
   }
   acep->a_flags |= ACE_IDENTIFIER_GROUP;
   skip = (2 * numgroup) - 1 - groupi;
   ace_make_deny(acep, acep + skip, isdir, B_FALSE);




   if (++groupi >= numgroup)
    acep += numgroup + 1;
   else
    acep += 1;
  } else if (aclent[i].a_type & OTHER_OBJ) {
   acep->a_who = (uid_t)-1;
   acep->a_flags |= ACE_EVERYONE;
   ace_make_deny(acep, acep + 1, isdir, B_FALSE);
   acep += 2;
  } else {
   error = EINVAL;
   goto out;
  }
 }

 *acepp = result;
 *rescount = resultsize;

out:
 if (error != 0) {
  if ((result != ((void*)0)) && (resultsize > 0)) {
   cacl_free(result, resultsize * sizeof (ace_t));
  }
 }

 return (error);
}

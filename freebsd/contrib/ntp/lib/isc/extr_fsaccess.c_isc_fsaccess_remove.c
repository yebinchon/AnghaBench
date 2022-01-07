
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_fsaccess_t ;


 int GROUP ;
 int ISC_FSACCESS_GROUP ;
 int ISC_FSACCESS_OTHER ;
 int ISC_FSACCESS_OWNER ;
 int OTHER ;
 int REQUIRE (int) ;

void
isc_fsaccess_remove(int trustee, int permission, isc_fsaccess_t *access) {
 REQUIRE(trustee <= 0x7);
 REQUIRE(permission <= 0xFF);


 if ((trustee & ISC_FSACCESS_OWNER) != 0)
  *access &= ~permission;

 if ((trustee & ISC_FSACCESS_GROUP) != 0)
  *access &= ~(permission << GROUP);

 if ((trustee & ISC_FSACCESS_OTHER) != 0)
  *access &= ~(permission << OTHER);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_fsaccess_t ;
typedef scalar_t__ isc_boolean_t ;


 int ISC_FSACCESS_ACCESSCHILD ;
 int ISC_FSACCESS_CREATECHILD ;
 int ISC_FSACCESS_DELETECHILD ;
 int ISC_FSACCESS_EXECUTE ;
 int ISC_FSACCESS_LISTDIRECTORY ;
 int ISC_FSACCESS_READ ;
 int ISC_FSACCESS_WRITE ;
 int ISC_R_NOTDIRECTORY ;
 int ISC_R_NOTFILE ;
 int ISC_R_SUCCESS ;
 int STEP ;

__attribute__((used)) static isc_result_t
check_bad_bits(isc_fsaccess_t access, isc_boolean_t is_dir) {
 isc_fsaccess_t bits;




 if (is_dir)
  bits = ISC_FSACCESS_READ |
         ISC_FSACCESS_WRITE |
         ISC_FSACCESS_EXECUTE;
 else
  bits = ISC_FSACCESS_CREATECHILD |
         ISC_FSACCESS_ACCESSCHILD |
         ISC_FSACCESS_DELETECHILD |
         ISC_FSACCESS_LISTDIRECTORY;




 bits |= bits << STEP;



 bits |= bits << STEP;

 if ((access & bits) != 0) {
  if (is_dir)
   return (ISC_R_NOTFILE);
  else
   return (ISC_R_NOTDIRECTORY);
 }

 return (ISC_R_SUCCESS);
}

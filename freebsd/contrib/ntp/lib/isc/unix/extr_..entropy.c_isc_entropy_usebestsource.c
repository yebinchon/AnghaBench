
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_4__ {int warn_keyboard; } ;
typedef TYPE_1__ isc_entropysource_t ;
typedef int isc_entropy_t ;
typedef scalar_t__ isc_boolean_t ;


 int ISC_ENTROPY_KEYBOARDMAYBE ;
 int ISC_ENTROPY_KEYBOARDNO ;
 int ISC_ENTROPY_KEYBOARDYES ;
 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_R_NOENTROPY ;
 scalar_t__ ISC_R_SUCCESS ;
 int ISC_TF (int) ;
 scalar_t__ ISC_TRUE ;
 char* PATH_RANDOMDEV ;
 int REQUIRE (int) ;
 int VALID_ENTROPY (int *) ;
 scalar_t__ isc_entropy_createcallbacksource (int *,int ,int ,int ,int *,TYPE_1__**) ;
 scalar_t__ isc_entropy_createfilesource (int *,char const*) ;
 int kbdget ;
 int kbdstart ;
 int kbdstop ;

isc_result_t
isc_entropy_usebestsource(isc_entropy_t *ectx, isc_entropysource_t **source,
     const char *randomfile, int use_keyboard)
{
 isc_result_t result;
 isc_result_t final_result = ISC_R_NOENTROPY;
 isc_boolean_t userfile = ISC_TRUE;

 REQUIRE(VALID_ENTROPY(ectx));
 REQUIRE(source != ((void*)0) && *source == ((void*)0));
 REQUIRE(use_keyboard == ISC_ENTROPY_KEYBOARDYES ||
  use_keyboard == ISC_ENTROPY_KEYBOARDNO ||
  use_keyboard == ISC_ENTROPY_KEYBOARDMAYBE);
 if (randomfile != ((void*)0) && use_keyboard != ISC_ENTROPY_KEYBOARDYES) {
  result = isc_entropy_createfilesource(ectx, randomfile);
  if (result == ISC_R_SUCCESS &&
      use_keyboard == ISC_ENTROPY_KEYBOARDMAYBE)
   use_keyboard = ISC_ENTROPY_KEYBOARDNO;
  if (result != ISC_R_SUCCESS && userfile)
   return (result);

  final_result = result;
 }

 if (use_keyboard != ISC_ENTROPY_KEYBOARDNO) {
  result = isc_entropy_createcallbacksource(ectx, kbdstart,
         kbdget, kbdstop,
         ((void*)0), source);
  if (result == ISC_R_SUCCESS)
   (*source)->warn_keyboard =
    ISC_TF(use_keyboard ==
           ISC_ENTROPY_KEYBOARDMAYBE);

  if (final_result != ISC_R_SUCCESS)
   final_result = result;
 }







 return (final_result);
}

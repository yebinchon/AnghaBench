
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {scalar_t__ maximum_size; int versions; int * name; int * stream; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
typedef TYPE_2__ isc_logdestination_t ;
typedef int isc_logconfig_t ;
typedef scalar_t__ isc_boolean_t ;
typedef int FILE ;


 int CHECK (int ) ;
 int ISC_LOG_DYNAMIC ;
 int ISC_LOG_ROLLNEVER ;
 int ISC_LOG_TOFILEDESC ;
 int ISC_MEM_DEBUGRECORD ;
 int ISC_R_SUCCESS ;
 int ISC_TRUE ;
 int categories ;
 int create_managers () ;
 int ectx ;
 int hash_active ;
 int isc_entropy_create (int ,int *) ;
 int isc_hash_create (int ,int ,int) ;
 int isc_log_create (int ,int *,int **) ;
 int isc_log_createchannel (int *,char*,int ,int ,TYPE_2__*,int ) ;
 int isc_log_registercategories (int ,int ) ;
 int isc_log_setcontext (int ) ;
 int isc_log_usechannel (int *,char*,int *,int *) ;
 int isc_mem_create (int ,int ,int *) ;
 int isc_mem_debugging ;
 int isc_os_ncpus () ;
 int isc_test_end () ;
 int lctx ;
 int mctx ;
 int ncpus ;

isc_result_t
isc_test_begin(FILE *logfile, isc_boolean_t start_managers) {
 isc_result_t result;

 isc_mem_debugging |= ISC_MEM_DEBUGRECORD;
 CHECK(isc_mem_create(0, 0, &mctx));
 CHECK(isc_entropy_create(mctx, &ectx));

 CHECK(isc_hash_create(mctx, ectx, 255));
 hash_active = ISC_TRUE;

 if (logfile != ((void*)0)) {
  isc_logdestination_t destination;
  isc_logconfig_t *logconfig = ((void*)0);

  CHECK(isc_log_create(mctx, &lctx, &logconfig));
  isc_log_registercategories(lctx, categories);
  isc_log_setcontext(lctx);

  destination.file.stream = logfile;
  destination.file.name = ((void*)0);
  destination.file.versions = ISC_LOG_ROLLNEVER;
  destination.file.maximum_size = 0;
  CHECK(isc_log_createchannel(logconfig, "stderr",
         ISC_LOG_TOFILEDESC,
         ISC_LOG_DYNAMIC,
         &destination, 0));
  CHECK(isc_log_usechannel(logconfig, "stderr", ((void*)0), ((void*)0)));
 }




 ncpus = 1;


 if (start_managers)
  CHECK(create_managers());

 return (ISC_R_SUCCESS);

  cleanup:
 isc_test_end();
 return (result);
}

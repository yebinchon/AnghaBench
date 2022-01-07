
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nthreads; int * result; } ;
struct section_fixture {char* name; TYPE_1__ thrd; int * file; int * section; } ;
struct ptunit_result {int dummy; } ;
typedef int FILE ;


 int fclose (int *) ;
 int free (char*) ;
 int pt_section_put (int *) ;
 int ptu_int_eq (int ,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,TYPE_1__*) ;
 int ptunit_thrd_fini ;
 int remove (char*) ;

__attribute__((used)) static struct ptunit_result sfix_fini(struct section_fixture *sfix)
{
 char *filename;
 FILE *file;
 int thrd, errcode;

 ptu_test(ptunit_thrd_fini, &sfix->thrd);

 if (sfix->section) {
  pt_section_put(sfix->section);
  sfix->section = ((void*)0);
 }

 filename = sfix->name;
 file = sfix->file;
 sfix->name = ((void*)0);
 sfix->file = ((void*)0);
 if (filename && file) {
  errcode = remove(filename);
  if (!errcode) {
   free(filename);
   filename = ((void*)0);
  }
 }

 if (file)
  fclose(file);

 if (filename) {
  (void) remove(filename);
  free(filename);
 }

 for (thrd = 0; thrd < sfix->thrd.nthreads; ++thrd)
  ptu_int_eq(sfix->thrd.result[thrd], 0);

 return ptu_passed();
}

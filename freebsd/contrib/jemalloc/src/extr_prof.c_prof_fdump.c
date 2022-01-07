
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int DUMP_FILENAME_BUFSIZE ;
 int VSEQ_INVALID ;
 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int opt_prof_final ;
 int opt_prof_leak ;
 char* opt_prof_prefix ;
 int prof_booted ;
 int prof_dump (int *,int,char*,int ) ;
 int prof_dump_filename (char*,float,int ) ;
 int prof_dump_seq_mtx ;
 int * tsd_fetch () ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_fdump(void) {
 tsd_t *tsd;
 char filename[DUMP_FILENAME_BUFSIZE];

 cassert(config_prof);
 assert(opt_prof_final);
 assert(opt_prof_prefix[0] != '\0');

 if (!prof_booted) {
  return;
 }
 tsd = tsd_fetch();
 assert(tsd_reentrancy_level_get(tsd) == 0);

 malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_seq_mtx);
 prof_dump_filename(filename, 'f', VSEQ_INVALID);
 malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_seq_mtx);
 prof_dump(tsd, 0, filename, opt_prof_leak);
}

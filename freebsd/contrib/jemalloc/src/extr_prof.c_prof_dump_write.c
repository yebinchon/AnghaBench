
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PROF_DUMP_BUFSIZE ;
 int cassert (int ) ;
 int config_prof ;
 int memcpy (int *,char const*,size_t) ;
 int * prof_dump_buf ;
 size_t prof_dump_buf_end ;
 scalar_t__ prof_dump_flush (int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
prof_dump_write(bool propagate_err, const char *s) {
 size_t i, slen, n;

 cassert(config_prof);

 i = 0;
 slen = strlen(s);
 while (i < slen) {

  if (prof_dump_buf_end == PROF_DUMP_BUFSIZE) {
   if (prof_dump_flush(propagate_err) && propagate_err) {
    return 1;
   }
  }

  if (prof_dump_buf_end + slen <= PROF_DUMP_BUFSIZE) {

   n = slen - i;
  } else {

   n = PROF_DUMP_BUFSIZE - prof_dump_buf_end;
  }
  memcpy(&prof_dump_buf[prof_dump_buf_end], &s[i], n);
  prof_dump_buf_end += n;
  i += n;
 }

 return 0;
}

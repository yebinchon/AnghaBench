
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uschar ;


 int FATAL (char*,int ) ;
 int REPEAT_PLUS_APPENDED ;
 int REPEAT_WITH_Q ;
 int REPEAT_ZERO ;
 char const* basestr ;
 char const* firstbasestr ;
 int lastre ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;
 char* prestr ;
 int strlen (char*) ;
 int xfree (char const*) ;

__attribute__((used)) static int
replace_repeat(const uschar *reptok, int reptoklen, const uschar *atom,
        int atomlen, int firstnum, int secondnum, int special_case)
{
 int i, j;
 uschar *buf = 0;
 int ret = 1;
 int init_q = (firstnum==0);
 int n_q_reps = secondnum-firstnum;
 int prefix_length = reptok - basestr;
 int suffix_length = strlen((char *) reptok) - reptoklen;
 int size = prefix_length + suffix_length;

 if (firstnum > 1) {
  size += atomlen*(firstnum-1);
 }


 if (special_case == REPEAT_PLUS_APPENDED) {
  size++;
 } else if (special_case == REPEAT_WITH_Q) {
  size += init_q + (atomlen+1)* n_q_reps;
 } else if (special_case == REPEAT_ZERO) {
  size += 2;
 }
 if ((buf = (uschar *) malloc(size+1)) == ((void*)0))
  FATAL("out of space in reg expr %.10s..", lastre);
 memcpy(buf, basestr, prefix_length);
 j = prefix_length;
 if (special_case == REPEAT_ZERO) {
  j -= atomlen;
  buf[j++] = '(';
  buf[j++] = ')';
 }
 for (i=1; i < firstnum; i++) {
  memcpy(&buf[j], atom, atomlen);
  j += atomlen;
 }
 if (special_case == REPEAT_PLUS_APPENDED) {
  buf[j++] = '+';
 } else if (special_case == REPEAT_WITH_Q) {
  if (init_q) buf[j++] = '?';
  for (i=0; i < n_q_reps; i++) {
   memcpy(&buf[j], atom, atomlen);
   j += atomlen;
   buf[j++] = '?';
  }
 }
 memcpy(&buf[j], reptok+reptoklen, suffix_length);
 if (special_case == REPEAT_ZERO) {
  buf[j+suffix_length] = '\0';
 } else {
  buf[size] = '\0';
 }

 if (firstbasestr != basestr) {
  if (basestr)
   xfree(basestr);
 }
 basestr = buf;
 prestr = buf + prefix_length;
 if (special_case == REPEAT_ZERO) {
  prestr -= atomlen;
  ret++;
 }
 return ret;
}

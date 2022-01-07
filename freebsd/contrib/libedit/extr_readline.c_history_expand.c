
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_STRING (char*,size_t,int) ;
 int _history_expand_command (char*,size_t,size_t,char**) ;
 int add_history (char*) ;
 int * e ;
 char* el_calloc (int,int) ;
 int el_free (char*) ;
 int * h ;
 char history_expansion_char ;
 scalar_t__ history_inhibit_expansion_function (char*,int) ;
 int history_no_expand_chars ;
 char history_subst_char ;
 scalar_t__ isspace (unsigned char) ;
 int memmove (char*,char*,size_t) ;
 int rl_initialize () ;
 int strchr (int ,char) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ stub1 (char*,int) ;

int
history_expand(char *str, char **output)
{
 int ret = 0;
 size_t idx, i, size;
 char *tmp, *result;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 if (history_expansion_char == 0) {
  *output = strdup(str);
  return 0;
 }

 *output = ((void*)0);
 if (str[0] == history_subst_char) {

  *output = el_calloc(strlen(str) + 4 + 1, sizeof(**output));
  if (*output == ((void*)0))
   return 0;
  (*output)[0] = (*output)[1] = history_expansion_char;
  (*output)[2] = ':';
  (*output)[3] = 's';
  (void)strcpy((*output) + 4, str);
  str = *output;
 } else {
  *output = strdup(str);
  if (*output == ((void*)0))
   return 0;
 }
 result = ((void*)0);
 size = idx = 0;
 tmp = ((void*)0);
 for (i = 0; str[i];) {
  int qchar, loop_again;
  size_t len, start, j;

  qchar = 0;
  loop_again = 1;
  start = j = i;
loop:
  for (; str[j]; j++) {
   if (str[j] == '\\' &&
       str[j + 1] == history_expansion_char) {
    len = strlen(&str[j + 1]) + 1;
    memmove(&str[j], &str[j + 1], len);
    continue;
   }
   if (!loop_again) {
    if (isspace((unsigned char) str[j])
        || str[j] == qchar)
     break;
   }
   if (str[j] == history_expansion_char
       && !strchr(history_no_expand_chars, str[j + 1])
       && (!history_inhibit_expansion_function ||
       (*history_inhibit_expansion_function)(str,
       (int)j) == 0))
    break;
  }

  if (str[j] && loop_again) {
   i = j;
   qchar = (j > 0 && str[j - 1] == '"' )? '"':0;
   j++;
   if (str[j] == history_expansion_char)
    j++;
   loop_again = 0;
   goto loop;
  }
  len = i - start;
  { if (idx + len + 1 > size) { char *nresult = el_realloc(result, (size += len + 1) * sizeof(*nresult)); if (nresult == ((void*)0)) { el_free(*output); if ( 0) el_free(tmp); return 0; } result = nresult; } (void)strncpy(&result[idx], &str[start], len); idx += len; result[idx] = '\0'; };

  if (str[i] == '\0' || str[i] != history_expansion_char) {
   len = j - i;
   { if (idx + len + 1 > size) { char *nresult = el_realloc(result, (size += len + 1) * sizeof(*nresult)); if (nresult == ((void*)0)) { el_free(*output); if ( 0) el_free(tmp); return 0; } result = nresult; } (void)strncpy(&result[idx], &str[i], len); idx += len; result[idx] = '\0'; };
   if (start == 0)
    ret = 0;
   else
    ret = 1;
   break;
  }
  ret = _history_expand_command (str, i, (j - i), &tmp);
  if (ret > 0 && tmp) {
   len = strlen(tmp);
   { if (idx + len + 1 > size) { char *nresult = el_realloc(result, (size += len + 1) * sizeof(*nresult)); if (nresult == ((void*)0)) { el_free(*output); if ( 1) el_free(tmp); return 0; } result = nresult; } (void)strncpy(&result[idx], tmp, len); idx += len; result[idx] = '\0'; };
  }
  if (tmp) {
   el_free(tmp);
   tmp = ((void*)0);
  }
  i = j;
 }


 if (ret == 2) {
  add_history(result);







 }
 el_free(*output);
 *output = result;

 return ret;
}

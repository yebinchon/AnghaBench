
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _rl_compat_sub (char*,char*,char*,int) ;
 char* el_calloc (size_t,int) ;
 int el_free (char*) ;
 char* el_realloc (char*,size_t) ;
 int fprintf (int ,char*,char const*) ;
 char* get_history_event (char const*,int*,int) ;
 char* history_arg_extract (int,int,char*) ;
 scalar_t__ isdigit (unsigned char) ;
 char* last_search_match ;
 int rl_outstream ;
 scalar_t__ strchr (char*,char const) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
_history_expand_command(const char *command, size_t offs, size_t cmdlen,
    char **result)
{
 char *tmp, *search = ((void*)0), *aptr;
 const char *ptr, *cmd;
 static char *from = ((void*)0), *to = ((void*)0);
 int start, end, idx, has_mods = 0;
 int p_on = 0, g_on = 0;

 *result = ((void*)0);
 aptr = ((void*)0);
 ptr = ((void*)0);


 idx = 0;

 if (strchr(":^*$", command[offs + 1])) {
  char str[4];





  str[0] = str[1] = '!';
  str[2] = '0';
  ptr = get_history_event(str, &idx, 0);
  idx = (command[offs + 1] == ':')? 1:0;
  has_mods = 1;
 } else {
  if (command[offs + 1] == '#') {

   if ((aptr = el_calloc(offs + 1, sizeof(*aptr)))
       == ((void*)0))
    return -1;
   (void)strncpy(aptr, command, offs);
   aptr[offs] = '\0';
   idx = 1;
  } else {
   int qchar;

   qchar = (offs > 0 && command[offs - 1] == '"')? '"':0;
   ptr = get_history_event(command + offs, &idx, qchar);
  }
  has_mods = command[offs + (size_t)idx] == ':';
 }

 if (ptr == ((void*)0) && aptr == ((void*)0))
  return -1;

 if (!has_mods) {
  *result = strdup(aptr ? aptr : ptr);
  if (aptr)
   el_free(aptr);
  if (*result == ((void*)0))
   return -1;
  return 1;
 }

 cmd = command + offs + idx + 1;



 if (*cmd == '%')
  tmp = strdup(last_search_match? last_search_match:"");
 else if (strchr("^*$-0123456789", *cmd)) {
  start = end = -1;
  if (*cmd == '^')
   start = end = 1, cmd++;
  else if (*cmd == '$')
   start = -1, cmd++;
  else if (*cmd == '*')
   start = 1, cmd++;
        else if (*cmd == '-' || isdigit((unsigned char) *cmd)) {
   start = 0;
   while (*cmd && '0' <= *cmd && *cmd <= '9')
    start = start * 10 + *cmd++ - '0';

   if (*cmd == '-') {
    if (isdigit((unsigned char) cmd[1])) {
     cmd++;
     end = 0;
     while (*cmd && '0' <= *cmd && *cmd <= '9')
      end = end * 10 + *cmd++ - '0';
    } else if (cmd[1] == '$') {
     cmd += 2;
     end = -1;
    } else {
     cmd++;
     end = -2;
    }
   } else if (*cmd == '*')
    end = -1, cmd++;
   else
    end = start;
  }
  tmp = history_arg_extract(start, end, aptr? aptr:ptr);
  if (tmp == ((void*)0)) {
   (void)fprintf(rl_outstream, "%s: Bad word specifier",
       command + offs + idx);
   if (aptr)
    el_free(aptr);
   return -1;
  }
 } else
  tmp = strdup(aptr? aptr:ptr);

 if (aptr)
  el_free(aptr);

 if (*cmd == '\0' || ((size_t)(cmd - (command + offs)) >= cmdlen)) {
  *result = tmp;
  return 1;
 }

 for (; *cmd; cmd++) {
  if (*cmd == ':')
   continue;
  else if (*cmd == 'h') {
   if ((aptr = strrchr(tmp, '/')) != ((void*)0))
    *aptr = '\0';
  } else if (*cmd == 't') {
   if ((aptr = strrchr(tmp, '/')) != ((void*)0)) {
    aptr = strdup(aptr + 1);
    el_free(tmp);
    tmp = aptr;
   }
  } else if (*cmd == 'r') {
   if ((aptr = strrchr(tmp, '.')) != ((void*)0))
    *aptr = '\0';
  } else if (*cmd == 'e') {
   if ((aptr = strrchr(tmp, '.')) != ((void*)0)) {
    aptr = strdup(aptr);
    el_free(tmp);
    tmp = aptr;
   }
  } else if (*cmd == 'p')
   p_on = 1;
  else if (*cmd == 'g')
   g_on = 2;
  else if (*cmd == 's' || *cmd == '&') {
   char *what, *with, delim;
   size_t len, from_len;
   size_t size;

   if (*cmd == '&' && (from == ((void*)0) || to == ((void*)0)))
    continue;
   else if (*cmd == 's') {
    delim = *(++cmd), cmd++;
    size = 16;
    what = el_realloc(from, size * sizeof(*what));
    if (what == ((void*)0)) {
     el_free(from);
     el_free(tmp);
     return 0;
    }
    len = 0;
    for (; *cmd && *cmd != delim; cmd++) {
     if (*cmd == '\\' && cmd[1] == delim)
      cmd++;
     if (len >= size) {
      char *nwhat;
      nwhat = el_realloc(what,
          (size <<= 1) *
          sizeof(*nwhat));
      if (nwhat == ((void*)0)) {
       el_free(what);
       el_free(tmp);
       return 0;
      }
      what = nwhat;
     }
     what[len++] = *cmd;
    }
    what[len] = '\0';
    from = what;
    if (*what == '\0') {
     el_free(what);
     if (search) {
      from = strdup(search);
      if (from == ((void*)0)) {
       el_free(tmp);
       return 0;
      }
     } else {
      from = ((void*)0);
      el_free(tmp);
      return -1;
     }
    }
    cmd++;
    if (!*cmd)
     continue;

    size = 16;
    with = el_realloc(to, size * sizeof(*with));
    if (with == ((void*)0)) {
     el_free(to);
     el_free(tmp);
     return -1;
    }
    len = 0;
    from_len = strlen(from);
    for (; *cmd && *cmd != delim; cmd++) {
     if (len + from_len + 1 >= size) {
      char *nwith;
      size += from_len + 1;
      nwith = el_realloc(with,
          size * sizeof(*nwith));
      if (nwith == ((void*)0)) {
       el_free(with);
       el_free(tmp);
       return -1;
      }
      with = nwith;
     }
     if (*cmd == '&') {

      (void)strcpy(&with[len], from);
      len += from_len;
      continue;
     }
     if (*cmd == '\\'
         && (*(cmd + 1) == delim
      || *(cmd + 1) == '&'))
      cmd++;
     with[len++] = *cmd;
    }
    with[len] = '\0';
    to = with;
   }

   aptr = _rl_compat_sub(tmp, from, to, g_on);
   if (aptr) {
    el_free(tmp);
    tmp = aptr;
   }
   g_on = 0;
  }
 }
 *result = tmp;
 return p_on? 2:1;
}

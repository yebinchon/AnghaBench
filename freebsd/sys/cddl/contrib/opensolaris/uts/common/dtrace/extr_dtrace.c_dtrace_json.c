
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef uintptr_t uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
typedef int dtrace_json_state_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int INT64_MIN ;
 char dtrace_load8 (uintptr_t) ;
 int dtrace_strncmp (char*,char*,int) ;
 int dtrace_strtoll (char*,int,uintptr_t) ;
 int isdigit (char) ;
 int islower (char) ;
 int isspace (char) ;
 int isxdigit (char) ;

__attribute__((used)) static char *
dtrace_json(uint64_t size, uintptr_t json, char *elemlist, int nelems,
    char *dest)
{
 dtrace_json_state_t state = 132;
 int64_t array_elem = INT64_MIN;
 int64_t array_pos = 0;
 uint8_t escape_unicount = 0;
 boolean_t string_is_key = B_FALSE;
 boolean_t collect_object = B_FALSE;
 boolean_t found_key = B_FALSE;
 boolean_t in_array = B_FALSE;
 uint32_t braces = 0, brackets = 0;
 char *elem = elemlist;
 char *dd = dest;
 uintptr_t cur;

 for (cur = json; cur < json + size; cur++) {
  char cc = dtrace_load8(cur);
  if (cc == '\0')
   return (((void*)0));

  switch (state) {
  case 132:
   if (isspace(cc))
    break;

   if (cc == '{') {
    state = 133;
    break;
   }

   if (cc == '[') {
    in_array = B_TRUE;
    array_pos = 0;
    array_elem = dtrace_strtoll(elem, 10, size);
    found_key = array_elem == 0 ? B_TRUE : B_FALSE;
    state = 128;
    break;
   }




   return (((void*)0));
  case 133:
   if (isspace(cc))
    break;

   if (cc == '"') {
    state = 131;
    string_is_key = B_TRUE;
    break;
   }






   return (((void*)0));
  case 131:
   if (cc == '\\') {
    *dd++ = '\\';
    state = 130;
    break;
   }

   if (cc == '"') {
    if (collect_object) {





     *dd++ = cc;
     collect_object = B_FALSE;
     state = 140;
     break;
    }
    *dd = '\0';
    dd = dest;
    if (string_is_key) {
     if (dtrace_strncmp(dest, elem,
         size) == 0)
      found_key = B_TRUE;
    } else if (found_key) {
     if (nelems > 1) {




      return (((void*)0));
     }
     return (dest);
    }
    state = string_is_key ? 139 :
        138;
    string_is_key = B_FALSE;
    break;
   }

   *dd++ = cc;
   break;
  case 130:
   *dd++ = cc;
   if (cc == 'u') {
    escape_unicount = 0;
    state = 129;
   } else {
    state = 131;
   }
   break;
  case 129:
   if (!isxdigit(cc)) {




    return (((void*)0));
   }

   *dd++ = cc;
   if (++escape_unicount == 4)
    state = 131;
   break;
  case 139:
   if (isspace(cc))
    break;

   if (cc == ':') {
    state = 128;
    break;
   }




   return (((void*)0));
  case 138:
   if (isspace(cc))
    break;

   if (cc == ',') {
    if (in_array) {
     state = 128;
     if (++array_pos == array_elem)
      found_key = B_TRUE;
    } else {
     state = 133;
    }
    break;
   }






   return (((void*)0));
  case 137:
   if (islower(cc)) {
    *dd++ = cc;
    break;
   }

   *dd = '\0';
   dd = dest;

   if (dtrace_strncmp(dest, "true", 5) == 0 ||
       dtrace_strncmp(dest, "false", 6) == 0 ||
       dtrace_strncmp(dest, "null", 5) == 0) {
    if (found_key) {
     if (nelems > 1) {




      return (((void*)0));
     }
     return (dest);
    } else {
     cur--;
     state = 138;
     break;
    }
   }





   return (((void*)0));
  case 136:
   if (cc == '.') {
    *dd++ = cc;
    state = 134;
    break;
   }

   if (cc == 'x' || cc == 'X') {




    return (((void*)0));
   }


  case 134:
   if (cc == 'e' || cc == 'E') {
    *dd++ = cc;
    state = 135;
    break;
   }

   if (cc == '+' || cc == '-') {



    return (((void*)0));
   }

  case 135:
   if (isdigit(cc) || cc == '+' || cc == '-') {
    *dd++ = cc;
    break;
   }

   *dd = '\0';
   dd = dest;
   if (found_key) {
    if (nelems > 1) {




     return (((void*)0));
    }
    return (dest);
   }

   cur--;
   state = 138;
   break;
  case 128:
   if (isspace(cc))
    break;

   if (cc == '{' || cc == '[') {
    if (nelems > 1 && found_key) {
     in_array = cc == '[' ? B_TRUE : B_FALSE;







     while (*elem != '\0')
      elem++;
     elem++;
     nelems--;
     dd = dest;
     if (in_array) {
      state = 128;
      array_pos = 0;
      array_elem = dtrace_strtoll(
          elem, 10, size);
      found_key = array_elem == 0 ?
          B_TRUE : B_FALSE;
     } else {
      found_key = B_FALSE;
      state = 133;
     }
     break;
    }





    if (cc == '[')
     brackets = 1;
    else
     braces = 1;
    *dd++ = cc;
    state = 140;
    break;
   }

   if (cc == '"') {
    state = 131;
    break;
   }

   if (islower(cc)) {



    *dd++ = cc;
    state = 137;
    break;
   }

   if (cc == '-' || isdigit(cc)) {
    *dd++ = cc;
    state = 136;
    break;
   }




   return (((void*)0));
  case 140:
   if (cc == '\0')



    return (((void*)0));

   *dd++ = cc;
   if (cc == '"') {
    collect_object = B_TRUE;
    state = 131;
    break;
   }

   if (cc == ']') {
    if (brackets-- == 0) {



     return (((void*)0));
    }
   } else if (cc == '}') {
    if (braces-- == 0) {



     return (((void*)0));
    }
   } else if (cc == '{') {
    braces++;
   } else if (cc == '[') {
    brackets++;
   }

   if (brackets == 0 && braces == 0) {
    if (found_key) {
     *dd = '\0';
     return (dest);
    }
    dd = dest;
    state = 138;
   }
   break;
  }
 }
 return (((void*)0));
}

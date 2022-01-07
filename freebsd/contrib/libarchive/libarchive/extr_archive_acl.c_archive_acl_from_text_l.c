
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_acl {int dummy; } ;


 int ARCHIVE_ENTRY_ACL_EVERYONE ;
 int ARCHIVE_ENTRY_ACL_GROUP ;




 int ARCHIVE_ENTRY_ACL_TYPE_ALARM ;
 int ARCHIVE_ENTRY_ACL_TYPE_ALLOW ;
 int ARCHIVE_ENTRY_ACL_TYPE_AUDIT ;

 int ARCHIVE_ENTRY_ACL_TYPE_DENY ;


 int ARCHIVE_ENTRY_ACL_USER ;

 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int __LA_FALLTHROUGH ;
 int archive_acl_add_entry_len_l (struct archive_acl*,int,int,int,int,char const*,int,struct archive_string_conv*) ;
 int archive_acl_reset (struct archive_acl*,int) ;
 int is_nfs4_flags (char const*,char const*,int*) ;
 int is_nfs4_perms (char const*,char const*,int*) ;
 int isint (char const*,char const*,int*) ;
 scalar_t__ ismode (char const*,char const*,int*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int next_field (char const**,char const**,char const**,char*) ;

int
archive_acl_from_text_l(struct archive_acl *acl, const char *text,
    int want_type, struct archive_string_conv *sc)
{
 struct {
  const char *start;
  const char *end;
 } field[6], name;

 const char *s, *st;
 int numfields, fields, n, r, sol, ret;
 int type, types, tag, permset, id;
 size_t len;
 char sep;

 switch (want_type) {
 case 129:
  want_type = 132;
  __LA_FALLTHROUGH;
 case 132:
 case 131:
  numfields = 5;
  break;
 case 130:
  numfields = 6;
  break;
 default:
  return (ARCHIVE_FATAL);
 }

 ret = ARCHIVE_OK;
 types = 0;

 while (text != ((void*)0) && *text != '\0') {




  fields = 0;
  do {
   const char *start, *end;
   next_field(&text, &start, &end, &sep);
   if (fields < numfields) {
    field[fields].start = start;
    field[fields].end = end;
   }
   ++fields;
  } while (sep == ':');


  for (n = fields; n < numfields; ++n)
   field[n].start = field[n].end = ((void*)0);

  if (field[0].start != ((void*)0) && *(field[0].start) == '#') {

   continue;
  }

  n = 0;
  sol = 0;
  id = -1;
  permset = 0;
  name.start = name.end = ((void*)0);

  if (want_type != 130) {
   s = field[0].start;
   len = field[0].end - field[0].start;
   if (*s == 'd' && (len == 1 || (len >= 7
       && memcmp((s + 1), "efault", 6) == 0))) {
    type = 131;
    if (len > 7)
     field[0].start += 7;
    else
     n = 1;
   } else
    type = want_type;


   isint(field[n + 1].start, field[n + 1].end, &id);

   if (id == -1 && fields > (n + 3))
    isint(field[n + 3].start, field[n + 3].end,
        &id);

   tag = 0;
   s = field[n].start;
   st = field[n].start + 1;
   len = field[n].end - field[n].start;

   if (len == 0) {
    ret = ARCHIVE_WARN;
    continue;
   }

   switch (*s) {
   case 'u':
    if (len == 1 || (len == 4
        && memcmp(st, "ser", 3) == 0))
     tag = 128;
    break;
   case 'g':
    if (len == 1 || (len == 5
        && memcmp(st, "roup", 4) == 0))
     tag = 135;
    break;
   case 'o':
    if (len == 1 || (len == 5
        && memcmp(st, "ther", 4) == 0))
     tag = 133;
    break;
   case 'm':
    if (len == 1 || (len == 4
        && memcmp(st, "ask", 3) == 0))
     tag = 134;
    break;
   default:
     break;
   }

   switch (tag) {
   case 133:
   case 134:
    if (fields == (n + 2)
        && field[n + 1].start < field[n + 1].end
        && ismode(field[n + 1].start,
        field[n + 1].end, &permset)) {

     sol = 1;
    } else if (fields == (n + 3) &&
        field[n + 1].start < field[n + 1].end) {

     ret = ARCHIVE_WARN;
     continue;
    }
    break;
   case 128:
   case 135:
    if (id != -1 ||
        field[n + 1].start < field[n + 1].end) {
     name = field[n + 1];
     if (tag == 128)
      tag = ARCHIVE_ENTRY_ACL_USER;
     else
      tag = ARCHIVE_ENTRY_ACL_GROUP;
    }
    break;
   default:

    ret = ARCHIVE_WARN;
    continue;
   }





   if (permset == 0 && !ismode(field[n + 2 - sol].start,
       field[n + 2 - sol].end, &permset)) {

    ret = ARCHIVE_WARN;
    continue;
   }
  } else {

   s = field[0].start;
   len = field[0].end - field[0].start;
   tag = 0;

   switch (len) {
   case 4:
    if (memcmp(s, "user", 4) == 0)
     tag = ARCHIVE_ENTRY_ACL_USER;
    break;
   case 5:
    if (memcmp(s, "group", 5) == 0)
     tag = ARCHIVE_ENTRY_ACL_GROUP;
    break;
   case 6:
    if (memcmp(s, "owner@", 6) == 0)
     tag = 128;
    else if (memcmp(s, "group@", 6) == 0)
     tag = 135;
    break;
   case 9:
    if (memcmp(s, "everyone@", 9) == 0)
     tag = ARCHIVE_ENTRY_ACL_EVERYONE;
    break;
   default:
    break;
   }

   if (tag == 0) {

    ret = ARCHIVE_WARN;
    continue;
   } else if (tag == ARCHIVE_ENTRY_ACL_USER ||
       tag == ARCHIVE_ENTRY_ACL_GROUP) {
    n = 1;
    name = field[1];
    isint(name.start, name.end, &id);
   } else
    n = 0;

   if (!is_nfs4_perms(field[1 + n].start,
       field[1 + n].end, &permset)) {

    ret = ARCHIVE_WARN;
    continue;
   }
   if (!is_nfs4_flags(field[2 + n].start,
       field[2 + n].end, &permset)) {

    ret = ARCHIVE_WARN;
    continue;
   }
   s = field[3 + n].start;
   len = field[3 + n].end - field[3 + n].start;
   type = 0;
   if (len == 4) {
    if (memcmp(s, "deny", 4) == 0)
     type = ARCHIVE_ENTRY_ACL_TYPE_DENY;
   } else if (len == 5) {
    if (memcmp(s, "allow", 5) == 0)
     type = ARCHIVE_ENTRY_ACL_TYPE_ALLOW;
    else if (memcmp(s, "audit", 5) == 0)
     type = ARCHIVE_ENTRY_ACL_TYPE_AUDIT;
    else if (memcmp(s, "alarm", 5) == 0)
     type = ARCHIVE_ENTRY_ACL_TYPE_ALARM;
   }
   if (type == 0) {

    ret = ARCHIVE_WARN;
    continue;
   }
   isint(field[4 + n].start, field[4 + n].end,
       &id);
  }


  r = archive_acl_add_entry_len_l(acl, type, permset,
      tag, id, name.start, name.end - name.start, sc);
  if (r < ARCHIVE_WARN)
   return (r);
  if (r != ARCHIVE_OK)
   ret = ARCHIVE_WARN;
  types |= type;
 }


 archive_acl_reset(acl, types);

 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {char* id; char* name; } ;
typedef TYPE_1__ OpenPGP_user ;


 char* malloc (size_t) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strncpy (char*,char*,size_t) ;

ssize_t
decode_user(int tag, unsigned char **pptr, size_t len, OpenPGP_user *user)
{
 char *cp;

 if (tag == 13) {
  user->id = malloc(len + 1);
  strncpy(user->id, (char *)*pptr, len);
  user->id[len] = '\0';
  user->name = user->id;
  cp = strchr(user->id, '<');
  if (cp > user->id) {
   user->id = strdup(user->id);
   cp[-1] = '\0';
  }
 }
 *pptr += len;
 return ((ssize_t)len);
}

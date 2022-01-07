
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {int value; int child; } ;
typedef TYPE_1__ mnemonic_t ;


 int EINVAL ;
 int ENOMEM ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int entry ;
 TYPE_1__* mnemonic_create (TYPE_1__*,int,int ) ;
 TYPE_1__* mnemonic_list_find (int *,int) ;

__attribute__((used)) static int
mnemonic_append_child(mnemonic_t *m, const char *s,
    wchar_t value, wchar_t invalid)
{
 mnemonic_t *m0;
 int ch;

 ch = (unsigned char)*s++;
 if (ch == '\0')
  return (EINVAL);
 m0 = mnemonic_list_find(&m->child, ch);
 if (m0 == ((void*)0)) {
  m0 = mnemonic_create(m, ch, (wchar_t)ch);
  if (m0 == ((void*)0))
   return (ENOMEM);
  TAILQ_INSERT_TAIL(&m->child, m0, entry);
 }
 m = m0;
 for (m0 = ((void*)0); (ch = (unsigned char)*s) != '\0'; ++s) {
  m0 = mnemonic_list_find(&m->child, ch);
  if (m0 == ((void*)0)) {
   m0 = mnemonic_create(m, ch, invalid);
   if (m0 == ((void*)0))
    return (ENOMEM);
   TAILQ_INSERT_TAIL(&m->child, m0, entry);
  }
  m = m0;
 }
 if (m0 == ((void*)0))
  return (EINVAL);
 m0->value = value;

 return (0);
}

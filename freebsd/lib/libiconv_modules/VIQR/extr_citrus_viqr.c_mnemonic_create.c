
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {int ascii; int child; int value; struct TYPE_5__* parent; } ;
typedef TYPE_1__ mnemonic_t ;


 int TAILQ_INIT (int *) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static mnemonic_t *
mnemonic_create(mnemonic_t *parent, int ascii, wchar_t value)
{
 mnemonic_t *m;

 m = malloc(sizeof(*m));
 if (m != ((void*)0)) {
  m->parent = parent;
  m->ascii = ascii;
  m->value = value;
  TAILQ_INIT(&m->child);
 }

 return (m);
}

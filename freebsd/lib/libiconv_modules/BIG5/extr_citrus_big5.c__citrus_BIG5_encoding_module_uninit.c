
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int _BIG5Exclude ;
struct TYPE_3__ {int excludes; } ;
typedef TYPE_1__ _BIG5EncodingInfo ;


 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int entry ;
 int free (int *) ;

__attribute__((used)) static void

_citrus_BIG5_encoding_module_uninit(_BIG5EncodingInfo *ei)
{
 _BIG5Exclude *exclude;

 while ((exclude = TAILQ_FIRST(&ei->excludes)) != ((void*)0)) {
  TAILQ_REMOVE(&ei->excludes, exclude, entry);
  free(exclude);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct extr_rec* current; struct extr_rec* first; } ;
struct isoent {TYPE_1__ extr_rec_list; } ;
struct extr_rec {struct extr_rec* next; scalar_t__ offset; int location; } ;



__attribute__((used)) static int
extra_setup_location(struct isoent *isoent, int location)
{
 struct extr_rec *rec;
 int cnt;

 cnt = 0;
 rec = isoent->extr_rec_list.first;
 isoent->extr_rec_list.current = rec;
 while (rec) {
  cnt++;
  rec->location = location++;
  rec->offset = 0;
  rec = rec->next;
 }
 return (cnt);
}

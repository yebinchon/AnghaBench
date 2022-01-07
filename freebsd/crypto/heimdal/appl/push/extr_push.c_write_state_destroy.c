
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_state {int iovecs; } ;


 int free (int ) ;

__attribute__((used)) static void
write_state_destroy (struct write_state *w)
{
    free (w->iovecs);
}

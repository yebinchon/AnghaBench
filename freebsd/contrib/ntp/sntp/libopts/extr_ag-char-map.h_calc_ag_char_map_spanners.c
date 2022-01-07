
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ag_char_map_mask_t ;


 int EXIT_FAILURE ;
 int _ (char*) ;
 int* ag_char_map_masks ;
 int ag_char_map_mutex ;
 unsigned char const** ag_char_map_spanners ;
 int* ag_char_map_table ;
 int exit (int ) ;
 int fputs (int ,int ) ;
 unsigned char* malloc (int) ;
 int memset (unsigned char*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;

__attribute__((used)) static unsigned char const *
calc_ag_char_map_spanners(unsigned int mask_ix)
{







    {
        int ix = 1;
        ag_char_map_mask_t mask = ag_char_map_masks[mask_ix];
        unsigned char * res = malloc(256 );
        if (res == ((void*)0)) {
            fputs(_("no memory for char-mapper span map\n"), stderr);
            exit(EXIT_FAILURE);
        }

        memset(res, 0, 256);
        for (; ix < 128; ix++)
            if (ag_char_map_table[ix] & mask)
                res[ix] = 1;
        ag_char_map_spanners[mask_ix] = res;
    }



    return ag_char_map_spanners[mask_ix];
}

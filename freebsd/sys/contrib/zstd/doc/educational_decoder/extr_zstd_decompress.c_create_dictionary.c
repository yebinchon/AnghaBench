
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictionary_t ;


 int BAD_ALLOC () ;
 int * calloc (int,int) ;

dictionary_t* create_dictionary() {
    dictionary_t* dict = calloc(1, sizeof(dictionary_t));
    if (!dict) {
        BAD_ALLOC();
    }
    return dict;
}

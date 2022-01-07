
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result_t ;


 scalar_t__ result_error_skip ;
 scalar_t__ result_get_error (int ) ;

__attribute__((used)) static int result_is_skip(result_t result) {
    return result_get_error(result) == result_error_skip;
}

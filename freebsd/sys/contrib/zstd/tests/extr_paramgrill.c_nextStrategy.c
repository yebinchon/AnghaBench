
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ZSTD_STRATEGY_MAX ;

__attribute__((used)) static int nextStrategy(const int currentStrategy, const int bestStrategy)
{
    if(bestStrategy <= currentStrategy) {
        int candidate = 2 * bestStrategy - currentStrategy - 1;
        if(candidate < 1) {
            candidate = currentStrategy + 1;
            if(candidate > (int)ZSTD_STRATEGY_MAX) {
                return 0;
            } else {
                return candidate;
            }
        } else {
            return candidate;
        }
    } else {
        int candidate = 2 * bestStrategy - currentStrategy;
        if(candidate > (int)ZSTD_STRATEGY_MAX) {
            candidate = currentStrategy - 1;
            if(candidate < 1) {
                return 0;
            } else {
                return candidate;
            }
        } else {
            return candidate;
        }
    }
}

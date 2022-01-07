; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/salsa20/extr_stream_salsa20.c__crypto_stream_salsa20_pick_best_implementation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/salsa20/extr_stream_salsa20.c__crypto_stream_salsa20_pick_best_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_stream_salsa20_ref_implementation = common dso_local global i32 0, align 4
@implementation = common dso_local global i32* null, align 8
@crypto_stream_salsa20_xmm6_implementation = common dso_local global i32 0, align 4
@crypto_stream_salsa20_xmm6int_avx2_implementation = common dso_local global i32 0, align 4
@crypto_stream_salsa20_xmm6int_sse2_implementation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_crypto_stream_salsa20_pick_best_implementation() #0 {
  store i32* @crypto_stream_salsa20_ref_implementation, i32** @implementation, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

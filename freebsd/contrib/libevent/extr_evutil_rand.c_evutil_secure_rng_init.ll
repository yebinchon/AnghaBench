; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil_rand.c_evutil_secure_rng_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil_rand.c_evutil_secure_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc4_seeded_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_secure_rng_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ARC4_LOCK_()
  %3 = load i64, i64* @arc4_seeded_ok, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @arc4_stir()
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i64, i64* @arc4_seeded_ok, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 -1
  store i32 %11, i32* %1, align 4
  %12 = call i32 (...) @ARC4_UNLOCK_()
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @ARC4_LOCK_(...) #1

declare dso_local i32 @arc4_stir(...) #1

declare dso_local i32 @ARC4_UNLOCK_(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

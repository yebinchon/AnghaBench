; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_pcg32_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_pcg32_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@rng = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcg32_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcg32_random() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rng, i32 0, i32 0), align 8
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = mul i64 %5, 6364136223846793005
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rng, i32 0, i32 1), align 8
  %8 = or i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = add i64 %6, %9
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rng, i32 0, i32 0), align 8
  %11 = load i64, i64* %1, align 8
  %12 = lshr i64 %11, 18
  %13 = load i64, i64* %1, align 8
  %14 = xor i64 %12, %13
  %15 = lshr i64 %14, 27
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %2, align 4
  %17 = load i64, i64* %1, align 8
  %18 = lshr i64 %17, 59
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 0, %24
  %26 = and i32 %25, 31
  %27 = shl i32 %23, %26
  %28 = or i32 %22, %27
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

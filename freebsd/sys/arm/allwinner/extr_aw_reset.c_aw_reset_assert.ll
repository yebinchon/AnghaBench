; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_reset.c_aw_reset_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_reset.c_aw_reset_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_reset_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @aw_reset_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_reset_assert(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aw_reset_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.aw_reset_softc* @device_get_softc(i32 %9)
  store %struct.aw_reset_softc* %10, %struct.aw_reset_softc** %7, align 8
  %11 = load %struct.aw_reset_softc*, %struct.aw_reset_softc** %7, align 8
  %12 = getelementptr inbounds %struct.aw_reset_softc, %struct.aw_reset_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.aw_reset_softc*, %struct.aw_reset_softc** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @RESET_OFFSET(i64 %15)
  %17 = call i32 @RESET_READ(%struct.aw_reset_softc* %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @RESET_SHIFT(i64 %21)
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %33

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @RESET_SHIFT(i64 %28)
  %30 = shl i32 1, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.aw_reset_softc*, %struct.aw_reset_softc** %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @RESET_OFFSET(i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @RESET_WRITE(%struct.aw_reset_softc* %34, i32 %36, i32 %37)
  %39 = load %struct.aw_reset_softc*, %struct.aw_reset_softc** %7, align 8
  %40 = getelementptr inbounds %struct.aw_reset_softc, %struct.aw_reset_softc* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  ret i32 0
}

declare dso_local %struct.aw_reset_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RESET_READ(%struct.aw_reset_softc*, i32) #1

declare dso_local i32 @RESET_OFFSET(i64) #1

declare dso_local i32 @RESET_SHIFT(i64) #1

declare dso_local i32 @RESET_WRITE(%struct.aw_reset_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

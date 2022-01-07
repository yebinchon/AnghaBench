; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ccu.c_aw_ccu_check_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ccu.c_aw_ccu_check_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ccu_softc = type { i32 }

@CCU_BASE = common dso_local global i64 0, align 8
@CCU_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_ccu_softc*, i64, i32*, i64*)* @aw_ccu_check_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_ccu_check_addr(%struct.aw_ccu_softc* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw_ccu_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  store %struct.aw_ccu_softc* %0, %struct.aw_ccu_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @CCU_BASE, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @CCU_BASE, align 8
  %16 = load i64, i64* @CCU_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @CCU_BASE, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %6, align 8
  %25 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %30

28:                                               ; preds = %13, %4
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @aml8726_mmc_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_mmc_write_ivar(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.aml8726_mmc_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.aml8726_mmc_softc* @device_get_softc(i32 %11)
  store %struct.aml8726_mmc_softc* %12, %struct.aml8726_mmc_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %73 [
    i32 142, label %14
    i32 141, label %20
    i32 139, label %26
    i32 138, label %32
    i32 133, label %38
    i32 132, label %43
    i32 131, label %48
    i32 128, label %54
    i32 129, label %60
    i32 130, label %66
    i32 140, label %72
    i32 135, label %72
    i32 136, label %72
    i32 137, label %72
    i32 134, label %72
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %17 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %15, i64* %19, align 8
  br label %75

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %23 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i64 %21, i64* %25, align 8
  br label %75

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %29 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i64 %27, i64* %31, align 8
  br label %75

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %35 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i64 %33, i64* %37, align 8
  br label %75

38:                                               ; preds = %4
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %41 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %75

43:                                               ; preds = %4
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %46 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  br label %75

48:                                               ; preds = %4
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %51 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  store i64 %49, i64* %53, align 8
  br label %75

54:                                               ; preds = %4
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %57 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  store i64 %55, i64* %59, align 8
  br label %75

60:                                               ; preds = %4
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %63 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  br label %75

66:                                               ; preds = %4
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %10, align 8
  %69 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i64 %67, i64* %71, align 8
  br label %75

72:                                               ; preds = %4, %4, %4, %4, %4
  br label %73

73:                                               ; preds = %4, %72
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %66, %60, %54, %48, %43, %38, %32, %26, %20, %14
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %73
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.aml8726_mmc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

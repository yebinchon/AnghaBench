; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @aw_mmc_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_write_ivar(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.aw_mmc_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.aw_mmc_softc* @device_get_softc(i32 %11)
  store %struct.aw_mmc_softc* %12, %struct.aw_mmc_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %14 [
    i32 142, label %16
    i32 141, label %22
    i32 139, label %28
    i32 138, label %34
    i32 133, label %40
    i32 132, label %45
    i32 131, label %50
    i32 128, label %56
    i32 129, label %62
    i32 130, label %68
    i32 140, label %74
    i32 135, label %74
    i32 136, label %74
    i32 137, label %74
    i32 134, label %74
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %77

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %19 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 8
  br label %76

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %25 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 %23, i64* %27, align 8
  br label %76

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %31 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i64 %29, i64* %33, align 8
  br label %76

34:                                               ; preds = %4
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %37 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i64 %35, i64* %39, align 8
  br label %76

40:                                               ; preds = %4
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %43 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %76

45:                                               ; preds = %4
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %48 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  br label %76

50:                                               ; preds = %4
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %53 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i64 %51, i64* %55, align 8
  br label %76

56:                                               ; preds = %4
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %59 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i64 %57, i64* %61, align 8
  br label %76

62:                                               ; preds = %4
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %65 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  store i64 %63, i64* %67, align 8
  br label %76

68:                                               ; preds = %4
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %71 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 7
  store i64 %69, i64* %73, align 8
  br label %76

74:                                               ; preds = %4, %4, %4, %4, %4
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %68, %62, %56, %50, %45, %40, %34, %28, %22, %16
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %74, %14
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.aw_mmc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

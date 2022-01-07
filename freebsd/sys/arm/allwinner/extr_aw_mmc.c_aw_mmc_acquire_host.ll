; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_acquire_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_acquire_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i64, i32 }

@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mmchw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @aw_mmc_acquire_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_acquire_host(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw_mmc_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.aw_mmc_softc* @device_get_softc(i32 %8)
  store %struct.aw_mmc_softc* %9, %struct.aw_mmc_softc** %6, align 8
  %10 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %6, align 8
  %11 = call i32 @AW_MMC_LOCK(%struct.aw_mmc_softc* %10)
  br label %12

12:                                               ; preds = %29, %2
  %13 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %6, align 8
  %14 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %6, align 8
  %19 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %6, align 8
  %20 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %19, i32 0, i32 1
  %21 = load i32, i32* @PCATCH, align 4
  %22 = call i32 @msleep(%struct.aw_mmc_softc* %18, i32* %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %6, align 8
  %27 = call i32 @AW_MMC_UNLOCK(%struct.aw_mmc_softc* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %17
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %6, align 8
  %32 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %6, align 8
  %36 = call i32 @AW_MMC_UNLOCK(%struct.aw_mmc_softc* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.aw_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_MMC_LOCK(%struct.aw_mmc_softc*) #1

declare dso_local i32 @msleep(%struct.aw_mmc_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @AW_MMC_UNLOCK(%struct.aw_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

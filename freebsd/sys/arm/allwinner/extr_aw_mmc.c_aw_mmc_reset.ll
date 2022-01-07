; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i32 }

@AW_MMC_GCTL = common dso_local global i32 0, align 4
@AW_MMC_GCTL_RESET = common dso_local global i32 0, align 4
@AW_MMC_RESET_RETRY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_mmc_softc*)* @aw_mmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_reset(%struct.aw_mmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aw_mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aw_mmc_softc* %0, %struct.aw_mmc_softc** %3, align 8
  %6 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %7 = load i32, i32* @AW_MMC_GCTL, align 4
  %8 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @AW_MMC_GCTL_RESET, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %13 = load i32, i32* @AW_MMC_GCTL, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @AW_MMC_RESET_RETRY, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %23 = load i32, i32* @AW_MMC_GCTL, align 4
  %24 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %22, i32 %23)
  %25 = load i32, i32* @AW_MMC_GCTL_RESET, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %31

29:                                               ; preds = %21
  %30 = call i32 @DELAY(i32 100)
  br label %17

31:                                               ; preds = %28, %17
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @AW_MMC_READ_4(%struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

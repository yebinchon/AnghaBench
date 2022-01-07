; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_update_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_update_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@AW_MMC_CKCR = common dso_local global i32 0, align 4
@AW_MMC_CKCR_ENB = common dso_local global i32 0, align 4
@AW_MMC_CKCR_LOW_POWER = common dso_local global i32 0, align 4
@AW_MMC_CKCR_MASK_DATA0 = common dso_local global i32 0, align 4
@AW_MMC_CMDR_LOAD = common dso_local global i32 0, align 4
@AW_MMC_CMDR_PRG_CLK = common dso_local global i32 0, align 4
@AW_MMC_CMDR_WAIT_PRE_OVER = common dso_local global i32 0, align 4
@AW_MMC_CMDR = common dso_local global i32 0, align 4
@AW_MMC_RISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"timeout updating clock\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_mmc_softc*, i32)* @aw_mmc_update_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_update_clock(%struct.aw_mmc_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_mmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aw_mmc_softc* %0, %struct.aw_mmc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %9 = load i32, i32* @AW_MMC_CKCR, align 4
  %10 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @AW_MMC_CKCR_ENB, align 4
  %12 = load i32, i32* @AW_MMC_CKCR_LOW_POWER, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AW_MMC_CKCR_MASK_DATA0, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @AW_MMC_CKCR_ENB, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @AW_MMC_CKCR_MASK_DATA0, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %38 = load i32, i32* @AW_MMC_CKCR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @AW_MMC_CMDR_LOAD, align 4
  %42 = load i32, i32* @AW_MMC_CMDR_PRG_CLK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @AW_MMC_CMDR_WAIT_PRE_OVER, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %47 = load i32, i32* @AW_MMC_CMDR, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %46, i32 %47, i32 %48)
  store i32 1048575, i32* %7, align 4
  br label %50

50:                                               ; preds = %61, %36
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @AW_MMC_CMDR_LOAD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i1 [ false, %50 ], [ %58, %55 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %63 = load i32, i32* @AW_MMC_CMDR, align 4
  %64 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = call i32 @DELAY(i32 10)
  br label %50

66:                                               ; preds = %59
  %67 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %68 = load i32, i32* @AW_MMC_RISR, align 4
  %69 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %67, i32 %68, i32 -1)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @AW_MMC_CMDR_LOAD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %76 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %79, i32* %3, align 4
  br label %100

80:                                               ; preds = %66
  %81 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %82 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %89 = load i32, i32* @AW_MMC_CKCR, align 4
  %90 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @AW_MMC_CKCR_MASK_DATA0, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %4, align 8
  %96 = load i32, i32* @AW_MMC_CKCR, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %87, %80
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @AW_MMC_READ_4(%struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"failed to reset PHY\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EMAC_BASIC_CTL_1 = common dso_local global i32 0, align 4
@BASIC_CTL_SOFT_RST = common dso_local global i32 0, align 4
@SOFT_RST_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"soft reset timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.awg_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.awg_softc* @device_get_softc(i32 %6)
  store %struct.awg_softc* %7, %struct.awg_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @awg_phy_reset(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %17 = load i32, i32* @EMAC_BASIC_CTL_1, align 4
  %18 = load i32, i32* @BASIC_CTL_SOFT_RST, align 4
  %19 = call i32 @WR4(%struct.awg_softc* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @SOFT_RST_RETRY, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %34, %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %26 = load i32, i32* @EMAC_BASIC_CTL_1, align 4
  %27 = call i32 @RD4(%struct.awg_softc* %25, i32 %26)
  %28 = load i32, i32* @BASIC_CTL_SOFT_RST, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %37

32:                                               ; preds = %24
  %33 = call i32 @DELAY(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %21

37:                                               ; preds = %31, %21
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %40, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.awg_softc* @device_get_softc(i32) #1

declare dso_local i64 @awg_phy_reset(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

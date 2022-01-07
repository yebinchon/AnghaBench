; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32 }

@EMAC_MII_DATA = common dso_local global i32 0, align 4
@EMAC_MII_CMD = common dso_local global i32 0, align 4
@MDC_DIV_RATIO_M_SHIFT = common dso_local global i32 0, align 4
@PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@PHY_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MII_WR = common dso_local global i32 0, align 4
@MII_BUSY = common dso_local global i32 0, align 4
@MII_BUSY_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"phy write timeout, phy=%d reg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @awg_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.awg_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.awg_softc* @device_get_softc(i32 %11)
  store %struct.awg_softc* %12, %struct.awg_softc** %9, align 8
  %13 = load %struct.awg_softc*, %struct.awg_softc** %9, align 8
  %14 = load i32, i32* @EMAC_MII_DATA, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @WR4(%struct.awg_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.awg_softc*, %struct.awg_softc** %9, align 8
  %18 = load i32, i32* @EMAC_MII_CMD, align 4
  %19 = load %struct.awg_softc*, %struct.awg_softc** %9, align 8
  %20 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MDC_DIV_RATIO_M_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PHY_ADDR_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PHY_REG_ADDR_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* @MII_WR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MII_BUSY, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @WR4(%struct.awg_softc* %17, i32 %18, i32 %35)
  %37 = load i32, i32* @MII_BUSY_RETRY, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %51, %4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.awg_softc*, %struct.awg_softc** %9, align 8
  %43 = load i32, i32* @EMAC_MII_CMD, align 4
  %44 = call i32 @RD4(%struct.awg_softc* %42, i32 %43)
  %45 = load i32, i32* @MII_BUSY, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %54

49:                                               ; preds = %41
  %50 = call i32 @DELAY(i32 10)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  br label %38

54:                                               ; preds = %48, %38
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  ret i32 0
}

declare dso_local %struct.awg_softc* @device_get_softc(i32) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

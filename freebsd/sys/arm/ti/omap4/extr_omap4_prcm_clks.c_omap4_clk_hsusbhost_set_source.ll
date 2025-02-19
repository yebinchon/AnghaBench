; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_set_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsusbhost_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i64 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }

@CM2_INSTANCE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@USBP1_PHY_CLK = common dso_local global i64 0, align 8
@USBP2_PHY_CLK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@L3INIT_CM2_OFFSET = common dso_local global i32 0, align 4
@EXT_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i64)* @omap4_clk_hsusbhost_set_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_hsusbhost_set_source(%struct.ti_clock_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap4_prcm_softc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @CM2_INSTANCE, align 4
  %12 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %11)
  store %struct.omap4_prcm_softc* %12, %struct.omap4_prcm_softc** %6, align 8
  %13 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %14 = icmp eq %struct.omap4_prcm_softc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %19 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USBP1_PHY_CLK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 24, i32* %10, align 4
  br label %34

24:                                               ; preds = %17
  %25 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %26 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USBP2_PHY_CLK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 25, i32* %10, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %36 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %36, align 8
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = load i32, i32* @L3INIT_CM2_OFFSET, align 4
  %39 = add nsw i32 %38, 88
  store i32 %39, i32* %8, align 4
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @bus_read_4(%struct.resource* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @EXT_CLK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %57

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 1, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.resource*, %struct.resource** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @bus_write_4(%struct.resource* %58, i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %31, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

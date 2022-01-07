; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_tll.c_omap_tll_utmi_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_tll.c_omap_tll_utmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_tll_softc = type { i32 }

@omap_tll_sc = common dso_local global %struct.omap_tll_softc* null, align 8
@TLL_CHANNEL_CONF_UTMIAUTOIDLE = common dso_local global i32 0, align 4
@TLL_CHANNEL_CONF_ULPINOBITSTUFF = common dso_local global i32 0, align 4
@TLL_CHANNEL_CONF_ULPIDDRMODE = common dso_local global i32 0, align 4
@OMAP_USBTLL_TLL_SHARED_CONF = common dso_local global i32 0, align 4
@TLL_SHARED_CONF_USB_90D_DDR_EN = common dso_local global i32 0, align 4
@TLL_SHARED_CONF_USB_DIVRATIO_MASK = common dso_local global i32 0, align 4
@TLL_SHARED_CONF_FCLK_IS_ON = common dso_local global i32 0, align 4
@TLL_SHARED_CONF_USB_DIVRATIO_2 = common dso_local global i32 0, align 4
@TLL_SHARED_CONF_USB_180D_SDR_EN = common dso_local global i32 0, align 4
@TLL_CHANNEL_CONF_CHANEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_tll_utmi_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_tll_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** @omap_tll_sc, align 8
  store %struct.omap_tll_softc* %6, %struct.omap_tll_softc** %3, align 8
  %7 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %8 = icmp eq %struct.omap_tll_softc* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %82

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @OMAP_USBTLL_TLL_CHANNEL_CONF(i32 %16)
  %18 = call i32 @omap_tll_read_4(%struct.omap_tll_softc* %15, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @TLL_CHANNEL_CONF_UTMIAUTOIDLE, align 4
  %20 = load i32, i32* @TLL_CHANNEL_CONF_ULPINOBITSTUFF, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TLL_CHANNEL_CONF_ULPIDDRMODE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @OMAP_USBTLL_TLL_CHANNEL_CONF(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @omap_tll_write_4(%struct.omap_tll_softc* %27, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %37 = load i32, i32* @OMAP_USBTLL_TLL_SHARED_CONF, align 4
  %38 = call i32 @omap_tll_read_4(%struct.omap_tll_softc* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @TLL_SHARED_CONF_USB_90D_DDR_EN, align 4
  %40 = load i32, i32* @TLL_SHARED_CONF_USB_DIVRATIO_MASK, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @TLL_SHARED_CONF_FCLK_IS_ON, align 4
  %46 = load i32, i32* @TLL_SHARED_CONF_USB_DIVRATIO_2, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TLL_SHARED_CONF_USB_180D_SDR_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %53 = load i32, i32* @OMAP_USBTLL_TLL_SHARED_CONF, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @omap_tll_write_4(%struct.omap_tll_softc* %52, i32 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %79, %35
  %57 = load i32, i32* %4, align 4
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @OMAP_USBTLL_TLL_CHANNEL_CONF(i32 %61)
  %63 = call i32 @omap_tll_read_4(%struct.omap_tll_softc* %60, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %79

70:                                               ; preds = %59
  %71 = load i32, i32* @TLL_CHANNEL_CONF_CHANEN, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.omap_tll_softc*, %struct.omap_tll_softc** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @OMAP_USBTLL_TLL_CHANNEL_CONF(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @omap_tll_write_4(%struct.omap_tll_softc* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %69
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %56

82:                                               ; preds = %9, %56
  ret void
}

declare dso_local i32 @omap_tll_read_4(%struct.omap_tll_softc*, i32) #1

declare dso_local i32 @OMAP_USBTLL_TLL_CHANNEL_CONF(i32) #1

declare dso_local i32 @omap_tll_write_4(%struct.omap_tll_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

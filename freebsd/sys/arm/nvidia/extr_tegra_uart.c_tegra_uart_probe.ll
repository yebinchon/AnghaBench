; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_uart.c_tegra_uart_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_uart.c_tegra_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_softc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.uart_class* }
%struct.uart_class = type { i32 }
%struct.ofw_compat_data = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot get 'serial' reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot unreset 'serial' reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot get UART clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot enable UART clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ofw_compat_data*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.tegra_softc* @device_get_softc(i32 %10)
  store %struct.tegra_softc* %11, %struct.tegra_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_status_okay(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @compat_data, align 4
  %20 = call %struct.ofw_compat_data* @ofw_bus_search_compatible(i32 %18, i32 %19)
  store %struct.ofw_compat_data* %20, %struct.ofw_compat_data** %9, align 8
  %21 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %9, align 8
  %22 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %103

27:                                               ; preds = %17
  %28 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %9, align 8
  %29 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.uart_class*
  %32 = load %struct.tegra_softc*, %struct.tegra_softc** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_softc, %struct.tegra_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.uart_class* %31, %struct.uart_class** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.tegra_softc*, %struct.tegra_softc** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_softc, %struct.tegra_softc* %37, i32 0, i32 1
  %39 = call i32 @hwreset_get_by_ofw_name(i32 %36, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %103

46:                                               ; preds = %27
  %47 = load %struct.tegra_softc*, %struct.tegra_softc** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_softc, %struct.tegra_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hwreset_deassert(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %103

57:                                               ; preds = %46
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @ofw_bus_get_node(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @uart_fdt_get_shift1(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.tegra_softc*, %struct.tegra_softc** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_softc, %struct.tegra_softc* %63, i32 0, i32 0
  %65 = call i32 @clk_get_by_ofw_index(i32 %62, i32 0, i32 0, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %103

73:                                               ; preds = %57
  %74 = load %struct.tegra_softc*, %struct.tegra_softc** %4, align 8
  %75 = getelementptr inbounds %struct.tegra_softc, %struct.tegra_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @clk_enable(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %2, align 4
  br label %103

85:                                               ; preds = %73
  %86 = load %struct.tegra_softc*, %struct.tegra_softc** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_softc, %struct.tegra_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @clk_get_freq(i32 %88, i64* %6)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %2, align 4
  br label %103

97:                                               ; preds = %85
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i64, i64* %6, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @uart_bus_probe(i32 %98, i32 %99, i32 0, i32 %101, i32 0, i32 0, i32 0)
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %92, %80, %68, %53, %42, %25, %15
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.tegra_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local %struct.ofw_compat_data* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @uart_fdt_get_shift1(i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_freq(i32, i64*) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

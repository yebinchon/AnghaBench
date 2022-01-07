; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_ahci.c_ahci_a10_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_ahci.c_ahci_a10_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32, i64, i32, i64, i64, i64, i64, i64, i32 }

@AHCI_Q_NOPMP = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot get gate clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot get PLL clock\0A\00", align 1
@PLL_FREQ = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot set PLL frequency\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Cannot enable PLL\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Cannot enable clk gate\0A\00", align 1
@ahci_a10_ch_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_a10_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_a10_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_controller*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ahci_controller* @device_get_softc(i32 %8)
  store %struct.ahci_controller* %9, %struct.ahci_controller** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* @AHCI_Q_NOPMP, align 4
  %11 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %12 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %11, i32 0, i32 9
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %14 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %16 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %18 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %20 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %22 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %26 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %25, i32 0, i32 2
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i32 @bus_alloc_resource_any(i32 %23, i32 %24, i64* %26, i32 %27)
  %29 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %30 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = icmp ne i32 %28, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %114

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @clk_get_by_ofw_index(i32 %35, i32 0, i32 0, i32** %7)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %91

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @clk_get_by_ofw_index(i32 %43, i32 0, i32 1, i32** %6)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %91

50:                                               ; preds = %42
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @PLL_FREQ, align 4
  %53 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %54 = call i32 @clk_set_freq(i32* %51, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %91

60:                                               ; preds = %50
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @clk_enable(i32* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %91

68:                                               ; preds = %60
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @clk_enable(i32* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %91

76:                                               ; preds = %68
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @ahci_a10_ctlr_reset(i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %91

81:                                               ; preds = %76
  %82 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %83 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %85 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @ahci_a10_ch_start, align 4
  %87 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %88 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @ahci_attach(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %114

91:                                               ; preds = %80, %73, %65, %57, %47, %39
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @clk_release(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32*, i32** %6, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @clk_release(i32* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @SYS_RES_MEMORY, align 4
  %106 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %107 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %110 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @bus_release_resource(i32 %104, i32 %105, i64 %108, i32 %111)
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %103, %81, %32
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_set_freq(i32*, i32, i32) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @ahci_a10_ctlr_reset(i32) #1

declare dso_local i32 @ahci_attach(i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

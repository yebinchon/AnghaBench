; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_rtc_softc = type { i32*, i32*, i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot map registers.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot allocate interrupt.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot get i2c clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot enable clock: %d\0A\00", align 1
@RTC_SECONDS_ALARM0 = common dso_local global i32 0, align 4
@RTC_SECONDS_ALARM1 = common dso_local global i32 0, align 4
@RTC_INTR_STATUS = common dso_local global i32 0, align 4
@RTC_INTR_MASK = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tegra_rtc_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Cannot setup interrupt.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_rtc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.tegra_rtc_softc* @device_get_softc(i32 %7)
  store %struct.tegra_rtc_softc* %8, %struct.tegra_rtc_softc** %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %11 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %13 = call i32 @LOCK_INIT(%struct.tegra_rtc_softc* %12)
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %5, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %22 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %4, align 4
  br label %100

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %5, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %4, align 4
  br label %100

45:                                               ; preds = %29
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %47, i32 0, i32 3
  %49 = call i32 @clk_get_by_ofw_index(i32 %46, i32 0, i32 0, i32** %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %100

56:                                               ; preds = %45
  %57 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %58 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @clk_enable(i32* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %100

67:                                               ; preds = %56
  %68 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %69 = load i32, i32* @RTC_SECONDS_ALARM0, align 4
  %70 = call i32 @WR4(%struct.tegra_rtc_softc* %68, i32 %69, i32 0)
  %71 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %72 = load i32, i32* @RTC_SECONDS_ALARM1, align 4
  %73 = call i32 @WR4(%struct.tegra_rtc_softc* %71, i32 %72, i32 0)
  %74 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %75 = load i32, i32* @RTC_INTR_STATUS, align 4
  %76 = call i32 @WR4(%struct.tegra_rtc_softc* %74, i32 %75, i32 -1)
  %77 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %78 = load i32, i32* @RTC_INTR_MASK, align 4
  %79 = call i32 @WR4(%struct.tegra_rtc_softc* %77, i32 %78, i32 0)
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %82 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @INTR_TYPE_MISC, align 4
  %85 = load i32, i32* @INTR_MPSAFE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @tegra_rtc_intr, align 4
  %88 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %89 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %90 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %89, i32 0, i32 2
  %91 = call i32 @bus_setup_intr(i32 %80, i32* %83, i32 %86, i32* null, i32 %87, %struct.tegra_rtc_softc* %88, i32** %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %67
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %100

97:                                               ; preds = %67
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @bus_generic_attach(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %152

100:                                              ; preds = %94, %63, %52, %41, %25
  %101 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %102 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %107 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @clk_release(i32* %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %112 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %118 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %121 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @bus_teardown_intr(i32 %116, i32* %119, i32* %122)
  br label %124

124:                                              ; preds = %115, %110
  %125 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %126 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @SYS_RES_IRQ, align 4
  %132 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %133 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @bus_release_resource(i32 %130, i32 %131, i32 0, i32* %134)
  br label %136

136:                                              ; preds = %129, %124
  %137 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %138 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @SYS_RES_MEMORY, align 4
  %144 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %145 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @bus_release_resource(i32 %142, i32 %143, i32 0, i32* %146)
  br label %148

148:                                              ; preds = %141, %136
  %149 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %6, align 8
  %150 = call i32 @LOCK_DESTROY(%struct.tegra_rtc_softc* %149)
  %151 = load i32, i32* %4, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %97
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.tegra_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @LOCK_INIT(%struct.tegra_rtc_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32**) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @WR4(%struct.tegra_rtc_softc*, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.tegra_rtc_softc*, i32**) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.tegra_rtc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

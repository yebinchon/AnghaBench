; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@a10hdmi_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot find ahb clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot find hdmi clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot find lcd clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"cannot enable hdmi clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"cannot enable ahb gate\0A\00", align 1
@a10hdmi_hpd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10hdmi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10hdmi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.a10hdmi_softc* @device_get_softc(i32 %6)
  store %struct.a10hdmi_softc* %7, %struct.a10hdmi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @a10hdmi_spec, align 4
  %10 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %10, i32 0, i32 4
  %12 = call i64 @bus_alloc_resources(i32 %8, i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %20, i32 0, i32 1
  %22 = call i32 @clk_get_by_ofw_name(i32 %19, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %31, i32 0, i32 2
  %33 = call i32 @clk_get_by_ofw_name(i32 %30, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %91

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %42, i32 0, i32 3
  %44 = call i32 @clk_get_by_ofw_name(i32 %41, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %52 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_enable(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %91

61:                                               ; preds = %50
  %62 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %63 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_enable(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %91

72:                                               ; preds = %61
  %73 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %74 = call i32 @a10hdmi_init(%struct.a10hdmi_softc* %73)
  %75 = load i32, i32* @a10hdmi_hpd, align 4
  %76 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %77 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %81 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %83, i32 0, i32 0
  %85 = call i32 @config_intrhook_establish(%struct.TYPE_2__* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %91

90:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %88, %68, %57, %36, %25, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.a10hdmi_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @a10hdmi_init(%struct.a10hdmi_softc*) #1

declare dso_local i32 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

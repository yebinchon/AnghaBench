; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_arm_tmr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_arm_tmr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_tmr_softc = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@arm_tmr_freq_varies = common dso_local global i64 0, align 8
@arm_tmr_freq = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"missing clock-frequency attribute in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@TMR_GBL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"not using variable-frequency device as timecounter\0A\00", align 1
@TMR_PRV = common dso_local global i32 0, align 4
@arm_tmr_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_tmr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_tmr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_tmr_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.arm_tmr_softc* @device_get_softc(i32 %10)
  store %struct.arm_tmr_softc* %11, %struct.arm_tmr_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %14 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @arm_tmr_freq_varies, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i64, i64* @arm_tmr_freq, align 8
  %19 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %20 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  br label %43

21:                                               ; preds = %1
  %22 = load i64, i64* @arm_tmr_freq, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* @arm_tmr_freq, align 8
  %26 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %27 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  br label %42

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ofw_bus_get_node(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @OF_getencprop(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %6, i32 8)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %96

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %41 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %24
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @compat_data, align 4
  %46 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @TMR_GBL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %43
  %56 = load i64, i64* @arm_tmr_freq_varies, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %60 = call i32 @attach_tc(%struct.arm_tmr_softc* %59)
  store i32 %60, i32* %8, align 4
  br label %70

61:                                               ; preds = %55
  %62 = load i64, i64* @bootverbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %66 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %58
  %71 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %72 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %76 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70, %43
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @TMR_PRV, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %4, align 8
  %86 = call i32 @attach_et(%struct.arm_tmr_softc* %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %90, %87
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %93, %34
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.arm_tmr_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @attach_tc(%struct.arm_tmr_softc*) #1

declare dso_local i32 @attach_et(%struct.arm_tmr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

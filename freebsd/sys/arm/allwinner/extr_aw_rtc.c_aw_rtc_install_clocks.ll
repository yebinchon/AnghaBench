; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_install_clocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_install_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.aw_rtc_softc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.clkdom = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Having only %d clocks instead of 3, aborting\0A\00", align 1
@aw_rtc_osc32k = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot register osc32k clock\0A\00", align 1
@aw_rtc_iosc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot register iosc clock\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_rtc_softc*, i32)* @aw_rtc_install_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_rtc_install_clocks(%struct.aw_rtc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aw_rtc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clkdom*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aw_rtc_softc* %0, %struct.aw_rtc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ofw_bus_get_node(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ofw_bus_string_list_to_array(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8*** %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %58

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.clkdom* @clkdom_create(i32 %24)
  store %struct.clkdom* %25, %struct.clkdom** %5, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aw_rtc_osc32k, i32 0, i32 1, i32 0), align 8
  %29 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %30 = call i64 @clknode_fixed_register(%struct.clkdom* %29, %struct.TYPE_8__* @aw_rtc_osc32k)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aw_rtc_iosc, i32 0, i32 1, i32 0), align 8
  %39 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aw_rtc_iosc, i32 0, i32 0), align 8
  %44 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %45 = call i64 @clknode_fixed_register(%struct.clkdom* %44, %struct.TYPE_8__* @aw_rtc_iosc)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %35
  %51 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %52 = call i32 @clkdom_finit(%struct.clkdom* %51)
  %53 = load i64, i64* @bootverbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %57 = call i32 @clkdom_dump(%struct.clkdom* %56)
  br label %58

58:                                               ; preds = %15, %19, %55, %50
  ret void
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ofw_bus_string_list_to_array(i32, i8*, i8***) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.clkdom* @clkdom_create(i32) #1

declare dso_local i64 @clknode_fixed_register(%struct.clkdom*, %struct.TYPE_8__*) #1

declare dso_local i32 @clkdom_finit(%struct.clkdom*) #1

declare dso_local i32 @clkdom_dump(%struct.clkdom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

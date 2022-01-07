; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dcu4.c_get_panel_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dcu4.c_get_panel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcu_softc = type { i32 }
%struct.panel_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"panel-size\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"panel-hsync\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"panel-vsync\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"panel-clk-div\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"panel-backlight-pin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcu_softc*, %struct.panel_info*)* @get_panel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_panel_info(%struct.dcu_softc* %0, %struct.panel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcu_softc*, align 8
  %5 = alloca %struct.panel_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.dcu_softc* %0, %struct.dcu_softc** %4, align 8
  store %struct.panel_info* %1, %struct.panel_info** %5, align 8
  %9 = load %struct.dcu_softc*, %struct.dcu_softc** %4, align 8
  %10 = getelementptr inbounds %struct.dcu_softc, %struct.dcu_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %107

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @OF_getproplen(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %3, align 4
  br label %107

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @OF_getencprop(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %24, i32 %25)
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %28 = load i8*, i8** %27, align 16
  %29 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %30 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %34 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @OF_getproplen(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %8, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @OF_getencprop(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %42, i32 %43)
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %46 = load i8*, i8** %45, align 16
  %47 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %48 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %52 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 2
  %54 = load i8*, i8** %53, align 16
  %55 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %56 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @OF_getproplen(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %8, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %3, align 4
  br label %107

62:                                               ; preds = %40
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @OF_getencprop(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %64, i32 %65)
  %67 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %68 = load i8*, i8** %67, align 16
  %69 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %70 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %74 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 2
  %76 = load i8*, i8** %75, align 16
  %77 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %78 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @OF_getproplen(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %80, i32* %8, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %3, align 4
  br label %107

84:                                               ; preds = %62
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @OF_getencprop(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %86, i32 %87)
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %90 = load i8*, i8** %89, align 16
  %91 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %92 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @OF_getproplen(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 %94, i32* %8, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %3, align 4
  br label %107

98:                                               ; preds = %84
  %99 = load i32, i32* %6, align 4
  %100 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @OF_getencprop(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %100, i32 %101)
  %103 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %104 = load i8*, i8** %103, align 16
  %105 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %106 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %98, %96, %82, %60, %38, %20, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_read_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_read_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"display-timings\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no \22display-timings\22 node\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"native-mode\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"no \22native-mode\22 reference in \22timings\22 node\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"hactive\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"vactive\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"hfront-porch\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"hback-porch\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"hsync-len\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"vfront-porch\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"vback-porch\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vsync-len\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"pixelclk-active\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"hsync-active\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"vsync-active\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.panel_info*)* @am335x_read_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_read_timing(i32 %0, i64 %1, %struct.panel_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.panel_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.panel_info* %2, %struct.panel_info** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @ofw_bus_find_child(i64 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %127

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @OF_searchencprop(i64 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %11, i32 8)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %127

26:                                               ; preds = %19
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @OF_node_from_xref(i64 %27)
  store i64 %28, i64* %10, align 8
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %32 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %31, i32 0, i32 11
  %33 = call i32 @am335x_read_property(i32 %29, i64 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %125

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %40 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %39, i32 0, i32 10
  %41 = call i32 @am335x_read_property(i32 %37, i64 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %125

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %48 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %47, i32 0, i32 9
  %49 = call i32 @am335x_read_property(i32 %45, i64 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %125

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %56 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %55, i32 0, i32 8
  %57 = call i32 @am335x_read_property(i32 %53, i64 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %125

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %64 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %63, i32 0, i32 7
  %65 = call i32 @am335x_read_property(i32 %61, i64 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %125

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %72 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %71, i32 0, i32 6
  %73 = call i32 @am335x_read_property(i32 %69, i64 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %125

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %80 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %79, i32 0, i32 5
  %81 = call i32 @am335x_read_property(i32 %77, i64 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %80)
  store i32 %81, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %125

84:                                               ; preds = %76
  %85 = load i32, i32* %5, align 4
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %88 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %87, i32 0, i32 4
  %89 = call i32 @am335x_read_property(i32 %85, i64 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %125

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %96 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %95, i32 0, i32 3
  %97 = call i32 @am335x_read_property(i32 %93, i64 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* %96)
  store i32 %97, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %125

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %104 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %103, i32 0, i32 2
  %105 = call i32 @am335x_read_property(i32 %101, i64 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32* %104)
  store i32 %105, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %125

108:                                              ; preds = %100
  %109 = load i32, i32* %5, align 4
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %112 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %111, i32 0, i32 1
  %113 = call i32 @am335x_read_property(i32 %109, i64 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32* %112)
  store i32 %113, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %125

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %120 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %119, i32 0, i32 0
  %121 = call i32 @am335x_read_property(i32 %117, i64 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* %120)
  store i32 %121, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %125

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %123, %115, %107, %99, %91, %83, %75, %67, %59, %51, %43, %35
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %23, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_searchencprop(i64, i8*, i64*, i32) #1

declare dso_local i64 @OF_node_from_xref(i64) #1

declare dso_local i32 @am335x_read_property(i32, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

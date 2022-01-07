; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_read_panel_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_read_panel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"panel-info\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ac-bias\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ac-bias-intrpt\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dma-burst-sz\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"fdd\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"sync-edge\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sync-ctrl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.panel_info*)* @am335x_read_panel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_read_panel_info(i32 %0, i64 %1, %struct.panel_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.panel_info*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.panel_info* %2, %struct.panel_info** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @ofw_bus_find_child(i64 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %18 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %17, i32 0, i32 6
  %19 = call i32 @am335x_read_property(i32 %15, i64 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %23 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %22, i32 0, i32 5
  %24 = call i32 @am335x_read_property(i32 %20, i64 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %28 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %27, i32 0, i32 4
  %29 = call i32 @am335x_read_property(i32 %25, i64 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %33 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %32, i32 0, i32 3
  %34 = call i32 @am335x_read_property(i32 %30, i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %38 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %37, i32 0, i32 2
  %39 = call i32 @am335x_read_property(i32 %35, i64 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %43 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %42, i32 0, i32 1
  %44 = call i32 @am335x_read_property(i32 %40, i64 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %48 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %47, i32 0, i32 0
  %49 = call i32 @am335x_read_property(i32 %45, i64 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %14, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i32 @am335x_read_property(i32, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

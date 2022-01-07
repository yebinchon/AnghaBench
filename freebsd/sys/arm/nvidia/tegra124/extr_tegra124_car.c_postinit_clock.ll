; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_postinit_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_car.c_postinit_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_init_item = type { i64, i64, i32, i32* }
%struct.tegra124_car_softc = type { i32 }
%struct.clknode = type { i32 }

@clk_init_table = common dso_local global %struct.tegra124_init_item* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Cannot find clock %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot set parent for %s (to %s): %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot set frequency for %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot enable %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra124_car_softc*)* @postinit_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postinit_clock(%struct.tegra124_car_softc* %0) #0 {
  %2 = alloca %struct.tegra124_car_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_init_item*, align 8
  %5 = alloca %struct.clknode*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra124_car_softc* %0, %struct.tegra124_car_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %101, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** @clk_init_table, align 8
  %10 = call i32 @nitems(%struct.tegra124_init_item* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %104

12:                                               ; preds = %7
  %13 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** @clk_init_table, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %13, i64 %15
  store %struct.tegra124_init_item* %16, %struct.tegra124_init_item** %4, align 8
  %17 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %18 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.clknode* @clknode_find_by_name(i32 %19)
  store %struct.clknode* %20, %struct.clknode** %5, align 8
  %21 = load %struct.clknode*, %struct.clknode** %5, align 8
  %22 = icmp eq %struct.clknode* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %12
  %24 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %2, align 8
  %25 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %28 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %101

31:                                               ; preds = %12
  %32 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %33 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.clknode*, %struct.clknode** %5, align 8
  %38 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %39 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @clknode_set_parent_by_name(%struct.clknode* %37, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %2, align 8
  %46 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %49 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %52 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32* %53, i32 %54)
  br label %101

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %59 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.clknode*, %struct.clknode** %5, align 8
  %64 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %65 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @clknode_set_freq(%struct.clknode* %63, i64 %66, i32 0, i32 9999)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %2, align 8
  %72 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %75 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  br label %101

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %82 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.clknode*, %struct.clknode** %5, align 8
  %87 = call i32 @clknode_enable(%struct.clknode* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %2, align 8
  %92 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tegra124_init_item*, %struct.tegra124_init_item** %4, align 8
  %95 = getelementptr inbounds %struct.tegra124_init_item, %struct.tegra124_init_item* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %97)
  br label %101

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %100, %90, %70, %44, %23
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %7

104:                                              ; preds = %7
  ret void
}

declare dso_local i32 @nitems(%struct.tegra124_init_item*) #1

declare dso_local %struct.clknode* @clknode_find_by_name(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @clknode_set_parent_by_name(%struct.clknode*, i32*) #1

declare dso_local i32 @clknode_set_freq(%struct.clknode*, i64, i32, i32) #1

declare dso_local i32 @clknode_enable(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

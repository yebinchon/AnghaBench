; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_armv5_machdep.c_platform_sram_devmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_armv5_machdep.c_platform_sram_devmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_entry = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"/sram\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mrvl,cesa-sram\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"mrvl,scratchpad\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MV_CESA_SRAM_BASE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devmap_entry*)* @platform_sram_devmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_sram_devmap(%struct.devmap_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devmap_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.devmap_entry* %0, %struct.devmap_entry** %3, align 8
  %8 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = call i32 @OF_finddevice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @ofw_bus_node_is_compatible(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ofw_bus_node_is_compatible(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  br label %35

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fdt_find_compatible(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %27, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @fdt_find_compatible(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %31, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %51

34:                                               ; preds = %29, %25
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @fdt_regsize(i32 %36, i8** %6, i8** %7)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %35
  %42 = load i32, i32* @MV_CESA_SRAM_BASE, align 4
  %43 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %44 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %47 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.devmap_entry*, %struct.devmap_entry** %3, align 8
  %50 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  store i32 0, i32* %2, align 4
  br label %53

51:                                               ; preds = %33
  %52 = load i32, i32* @ENOENT, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %41, %39, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32 @fdt_find_compatible(i32, i8*, i32) #1

declare dso_local i64 @fdt_regsize(i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

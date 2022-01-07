; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mp.c_alloc_resource_for_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mp.c_alloc_resource_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.resource*, i64*)* @alloc_resource_for_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_resource_for_node(i32 %0, %struct.resource* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @OF_parent(i32 %12)
  %14 = call i32 @fdt_get_range(i32 %13, i32 0, i64* %9, i64* %10)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @fdt_regsize(i32 %17, i64* %11, i64* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %11, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = call i32 @memset(%struct.resource* %27, i32 0, i32 8)
  %29 = load i32, i32* @fdtbus_bs_tag, align 4
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %11, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = call i32 @bus_space_map(i32 %34, i64 %35, i64 %37, i32 0, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %23, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @fdt_get_range(i32, i32, i64*, i64*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @fdt_regsize(i32, i64*, i64*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @bus_space_map(i32, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

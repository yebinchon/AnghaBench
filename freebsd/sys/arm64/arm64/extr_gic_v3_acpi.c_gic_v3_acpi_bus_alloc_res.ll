; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_bus_alloc_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_bus_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.gic_v3_acpi_devinfo = type { i32 }
%struct.resource_list_entry = type { i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @gic_v3_acpi_bus_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @gic_v3_acpi_bus_alloc_res(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.gic_v3_acpi_devinfo*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %64

24:                                               ; preds = %8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.gic_v3_acpi_devinfo* @device_get_ivars(i32 %30)
  store %struct.gic_v3_acpi_devinfo* %31, %struct.gic_v3_acpi_devinfo** %18, align 8
  %32 = icmp eq %struct.gic_v3_acpi_devinfo* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %64

34:                                               ; preds = %29
  %35 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %18, align 8
  %36 = getelementptr inbounds %struct.gic_v3_acpi_devinfo, %struct.gic_v3_acpi_devinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.resource_list_entry* @resource_list_find(i32* %36, i32 %37, i32 %39)
  store %struct.resource_list_entry* %40, %struct.resource_list_entry** %19, align 8
  %41 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %42 = icmp eq %struct.resource_list_entry* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %64

44:                                               ; preds = %34
  %45 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %46 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %49 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %52 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %44, %24
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call %struct.resource* @bus_generic_alloc_resource(i32 %55, i32 %56, i32 %57, i32* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store %struct.resource* %63, %struct.resource** %9, align 8
  br label %64

64:                                               ; preds = %54, %43, %33, %23
  %65 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %65
}

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.gic_v3_acpi_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

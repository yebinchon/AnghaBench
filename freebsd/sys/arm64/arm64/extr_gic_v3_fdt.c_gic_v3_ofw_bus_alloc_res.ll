; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_fdt.c_gic_v3_ofw_bus_alloc_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_fdt.c_gic_v3_ofw_bus_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.gic_v3_ofw_devinfo = type { i32 }
%struct.resource_list_entry = type { i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Ranges remap not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @gic_v3_ofw_bus_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @gic_v3_ofw_bus_alloc_res(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.gic_v3_ofw_devinfo*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %8
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.gic_v3_ofw_devinfo* @device_get_ivars(i32 %26)
  store %struct.gic_v3_ofw_devinfo* %27, %struct.gic_v3_ofw_devinfo** %18, align 8
  %28 = icmp eq %struct.gic_v3_ofw_devinfo* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %83

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %83

35:                                               ; preds = %30
  %36 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %18, align 8
  %37 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.resource_list_entry* @resource_list_find(i32* %37, i32 %38, i32 %40)
  store %struct.resource_list_entry* %41, %struct.resource_list_entry** %19, align 8
  %42 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %43 = icmp eq %struct.resource_list_entry* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %83

45:                                               ; preds = %35
  %46 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %47 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %50 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %53 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %45, %8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @ofw_bus_has_prop(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ofw_bus_get_node(i32 %60)
  %62 = call i32 @OF_getproplen(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i64, i64* @bootverbose, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %83

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call %struct.resource* @bus_generic_alloc_resource(i32 %74, i32 %75, i32 %76, i32* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store %struct.resource* %82, %struct.resource** %9, align 8
  br label %83

83:                                               ; preds = %73, %71, %44, %34, %29
  %84 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %84
}

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.gic_v3_ofw_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i64 @ofw_bus_has_prop(i32, i8*) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

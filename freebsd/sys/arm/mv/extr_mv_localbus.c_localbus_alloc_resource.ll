; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_localbus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_localbus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.localbus_devinfo = type { i32, i32 }
%struct.resource_list_entry = type { i32, i32, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no default resources for rid = %d, type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @localbus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @localbus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.localbus_devinfo*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %8
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.localbus_devinfo* @device_get_ivars(i32 %25)
  store %struct.localbus_devinfo* %26, %struct.localbus_devinfo** %18, align 8
  %27 = icmp eq %struct.localbus_devinfo* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %72

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %18, align 8
  %37 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %36, i32 0, i32 0
  store i32* %37, i32** %13, align 8
  %38 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %18, align 8
  %39 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %38, i32 0, i32 1
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.resource_list_entry* @resource_list_find(i32* %39, i32 %40, i32 %42)
  store %struct.resource_list_entry* %43, %struct.resource_list_entry** %19, align 8
  %44 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %45 = icmp eq %struct.resource_list_entry* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %72

52:                                               ; preds = %35
  %53 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %54 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %57 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %60 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %52, %8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call %struct.resource* @bus_generic_alloc_resource(i32 %63, i32 %64, i32 %65, i32* %66, i32 %67, i32 %68, i32 %69, i32 %70)
  store %struct.resource* %71, %struct.resource** %9, align 8
  br label %72

72:                                               ; preds = %62, %46, %28
  %73 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %73
}

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.localbus_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_nexus.c_nexus_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_nexus.c_nexus_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@fdtbus_bs_tag = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @nexus_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %16 = load %struct.resource*, %struct.resource** %11, align 8
  %17 = call i32 @rman_activate_resource(%struct.resource* %16)
  store i32 %17, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %62

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SYS_RES_IOPORT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25, %21
  %30 = load %struct.resource*, %struct.resource** %11, align 8
  %31 = call i64 @rman_get_start(%struct.resource* %30)
  store i64 %31, i64* %13, align 8
  %32 = load %struct.resource*, %struct.resource** %11, align 8
  %33 = call i64 @rman_get_size(%struct.resource* %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %13, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %14, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @pmap_mapdev(i32 %35, i32 %37)
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.resource*, %struct.resource** %11, align 8
  %43 = call i32 @rman_deactivate_resource(%struct.resource* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %6, align 4
  br label %62

45:                                               ; preds = %29
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = call i32 @rman_set_bustag(%struct.resource* %46, i8* inttoptr (i64 1 to i8*))
  %48 = load %struct.resource*, %struct.resource** %11, align 8
  %49 = load i64, i64* %15, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @rman_set_virtual(%struct.resource* %48, i8* %50)
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @rman_set_bushandle(%struct.resource* %52, i64 %53)
  store i32 0, i32* %6, align 4
  br label %62

55:                                               ; preds = %25
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SYS_RES_IRQ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %55
  br label %61

61:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %45, %41, %19
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i8*) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

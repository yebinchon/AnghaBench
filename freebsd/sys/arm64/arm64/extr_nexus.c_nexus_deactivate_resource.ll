; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_nexus.c_nexus_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_nexus.c_nexus_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@memmap_bus = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @nexus_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resource* %4, %struct.resource** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SYS_RES_IOPORT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16, %5
  %21 = load %struct.resource*, %struct.resource** %10, align 8
  %22 = call i64 @rman_get_size(%struct.resource* %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.resource*, %struct.resource** %10, align 8
  %24 = call i64 @rman_get_bushandle(%struct.resource* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @bus_space_unmap(i32* @memmap_bus, i64 %28, i64 %29)
  %31 = load %struct.resource*, %struct.resource** %10, align 8
  %32 = call i32 @rman_set_virtual(%struct.resource* %31, i32* null)
  %33 = load %struct.resource*, %struct.resource** %10, align 8
  %34 = call i32 @rman_set_bushandle(%struct.resource* %33, i32 0)
  br label %35

35:                                               ; preds = %27, %20
  br label %45

36:                                               ; preds = %16
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SYS_RES_IRQ, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.resource*, %struct.resource** %10, align 8
  %43 = call i32 @intr_deactivate_irq(i32 %41, %struct.resource* %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.resource*, %struct.resource** %10, align 8
  %47 = call i32 @rman_deactivate_resource(%struct.resource* %46)
  ret i32 %47
}

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i64 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @bus_space_unmap(i32*, i64, i64) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @intr_deactivate_irq(i32, %struct.resource*) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

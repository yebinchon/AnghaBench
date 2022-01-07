; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_nexus.c_nexus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_nexus.c_nexus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rman = type { i32 }
%struct.resource = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@mem_rman = common dso_local global %struct.rman zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @nexus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @nexus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource*, align 8
  %19 = alloca %struct.rman*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %17, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %30 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %8, %8
  store %struct.rman* @mem_rman, %struct.rman** %19, align 8
  br label %31

30:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %63

31:                                               ; preds = %29
  %32 = load %struct.rman*, %struct.rman** %19, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.resource* @rman_reserve_resource(%struct.rman* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct.resource* %38, %struct.resource** %18, align 8
  %39 = load %struct.resource*, %struct.resource** %18, align 8
  %40 = icmp eq %struct.resource* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %63

42:                                               ; preds = %31
  %43 = load %struct.resource*, %struct.resource** %18, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rman_set_rid(%struct.resource* %43, i32 %45)
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.resource*, %struct.resource** %18, align 8
  %55 = call i64 @bus_activate_resource(i32 %50, i32 %51, i32 %53, %struct.resource* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.resource*, %struct.resource** %18, align 8
  %59 = call i32 @rman_release_resource(%struct.resource* %58)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %63

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %62, %struct.resource** %9, align 8
  br label %63

63:                                               ; preds = %61, %57, %41, %30
  %64 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %64
}

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

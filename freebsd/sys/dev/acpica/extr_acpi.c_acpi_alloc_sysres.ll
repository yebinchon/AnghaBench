; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_alloc_sysres.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_alloc_sysres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rman = type { i32 }
%struct.resource = type { i32 }

@acpi_rman_io = common dso_local global %struct.rman zeroinitializer, align 4
@acpi_rman_mem = common dso_local global %struct.rman zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"wildcard resource range\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @acpi_alloc_sysres(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rman*, align 8
  %17 = alloca %struct.resource*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %21 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %7
  store %struct.rman* @acpi_rman_io, %struct.rman** %16, align 8
  br label %22

20:                                               ; preds = %7
  store %struct.rman* @acpi_rman_mem, %struct.rman** %16, align 8
  br label %22

21:                                               ; preds = %7
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %67

22:                                               ; preds = %20, %19
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.rman*, %struct.rman** %16, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.resource* @rman_reserve_resource(%struct.rman* %31, i32 %32, i32 %33, i32 %34, i32 %38, i32 %39)
  store %struct.resource* %40, %struct.resource** %17, align 8
  %41 = load %struct.resource*, %struct.resource** %17, align 8
  %42 = icmp eq %struct.resource* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %67

44:                                               ; preds = %22
  %45 = load %struct.resource*, %struct.resource** %17, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rman_set_rid(%struct.resource* %45, i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.resource*, %struct.resource** %17, align 8
  %59 = call i64 @bus_activate_resource(i32 %54, i32 %55, i32 %57, %struct.resource* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.resource*, %struct.resource** %17, align 8
  %63 = call i32 @rman_release_resource(%struct.resource* %62)
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %67

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.resource*, %struct.resource** %17, align 8
  store %struct.resource* %66, %struct.resource** %8, align 8
  br label %67

67:                                               ; preds = %65, %61, %43, %21
  %68 = load %struct.resource*, %struct.resource** %8, align 8
  ret %struct.resource* %68
}

declare dso_local i32 @KASSERT(i32, i8*) #1

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

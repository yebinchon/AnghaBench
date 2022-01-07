; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_bus_alloc_gas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_bus_alloc_gas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_alloc_gas(i32 %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, %struct.resource** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.resource**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %11, align 8
  store %struct.resource** %4, %struct.resource*** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load %struct.resource**, %struct.resource*** %12, align 8
  %27 = icmp eq %struct.resource** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %22, %19, %6
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %7, align 4
  br label %100

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %38 [
    i32 128, label %34
    i32 129, label %36
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %35, i32* %15, align 4
  br label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %37, i32* %15, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %39, i32* %7, align 4
  br label %100

40:                                               ; preds = %36, %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 8, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45, %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %7, align 4
  br label %100

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 8
  %77 = call i32 @bus_set_resource(i32 %66, i32 %67, i32 %69, i32 %72, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* @RF_ACTIVE, align 4
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %81, %82
  %84 = call %struct.resource* @bus_alloc_resource_any(i32 %78, i32 %79, i32* %80, i32 %83)
  %85 = load %struct.resource**, %struct.resource*** %12, align 8
  store %struct.resource* %84, %struct.resource** %85, align 8
  %86 = load %struct.resource**, %struct.resource*** %12, align 8
  %87 = load %struct.resource*, %struct.resource** %86, align 8
  %88 = icmp ne %struct.resource* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %65
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %14, align 4
  br label %98

92:                                               ; preds = %65
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bus_delete_resource(i32 %93, i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %98, %63, %38, %28
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

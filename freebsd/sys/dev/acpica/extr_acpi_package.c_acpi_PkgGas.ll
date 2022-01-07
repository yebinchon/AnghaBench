; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_package.c_acpi_PkgGas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_package.c_acpi_PkgGas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.resource = type { i32 }

@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_PkgGas(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32* %4, %struct.resource** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.resource**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.resource** %5, %struct.resource*** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %17, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %7
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %27, %7
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %8, align 4
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 3
  %48 = call i32 @memcpy(i32* %16, i64 %47, i32 4)
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load %struct.resource**, %struct.resource*** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @acpi_bus_alloc_gas(i32 %49, i32* %50, i32* %51, i32* %16, %struct.resource** %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %42, %40
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @acpi_bus_alloc_gas(i32, i32*, i32*, i32*, %struct.resource**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

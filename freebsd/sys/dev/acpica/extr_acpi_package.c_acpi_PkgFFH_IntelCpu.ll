; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_package.c_acpi_PkgFFH_IntelCpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_package.c_acpi_PkgFFH_IntelCpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }

@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_FIXED_HARDWARE = common dso_local global i64 0, align 8
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_PkgFFH_IntelCpu(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %15, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 27
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %25, %6
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %7, align 4
  br label %66

40:                                               ; preds = %31
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 3
  %46 = call i32 @memcpy(%struct.TYPE_10__* %14, i64 %45, i32 24)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @ERESTART, align 4
  store i32 %52, i32* %7, align 4
  br label %66

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %53, %51, %38
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

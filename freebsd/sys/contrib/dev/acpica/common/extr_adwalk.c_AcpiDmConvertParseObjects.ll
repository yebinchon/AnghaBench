; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adwalk.c_AcpiDmConvertParseObjects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adwalk.c_AcpiDmConvertParseObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i64, i64 }

@AcpiDmCommonDescendingOp = common dso_local global i32 0, align 4
@AcpiDmCommonAscendingOp = common dso_local global i32 0, align 4
@AcpiGbl_TempListHead = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmConvertParseObjects(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @AcpiDsCreateWalkState(i32 0, i32* %12, i32* null, i32* null)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @AcpiDsScopeStackPush(%struct.TYPE_7__* %18, i32 %21, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @ACPI_FREE(i32* %28)
  br label %46

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @AcpiDmCommonDescendingOp, align 4
  %37 = load i32, i32* @AcpiDmCommonAscendingOp, align 4
  %38 = call i32 @AcpiDmWalkParseTree(i32* %35, i32 %36, i32 %37, %struct.TYPE_6__* %6)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @ACPI_FREE(i32* %39)
  %41 = load i64, i64* @AcpiGbl_TempListHead, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = call i32 (...) @AcpiDmClearTempList()
  br label %45

45:                                               ; preds = %43, %30
  br label %46

46:                                               ; preds = %45, %27, %16, %10
  ret void
}

declare dso_local i32* @AcpiDsCreateWalkState(i32, i32*, i32*, i32*) #1

declare dso_local i32 @AcpiDsScopeStackPush(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

declare dso_local i32 @AcpiDmWalkParseTree(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @AcpiDmClearTempList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

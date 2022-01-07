; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdCommonNamespaceEnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdCommonNamespaceEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@PARSEOP_DEFAULT_ARG = common dso_local global i64 0, align 8
@OP_IS_RESOURCE_DESC = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_RESOURCE = common dso_local global i32 0, align 4
@PARSEOP_NAME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"(%s): Popping scope for Op [%s] %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*)* @LdCommonNamespaceEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LdCommonNamespaceEnd(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %10, align 8
  %14 = call i32 @ACPI_FUNCTION_NAME(i32 (%struct.TYPE_6__*, i32, i8*)* @LdCommonNamespaceEnd)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %4, align 4
  br label %84

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ACPI_TYPE_LOCAL_RESOURCE, align 4
  store i32 %37, i32* %9, align 4
  br label %44

38:                                               ; preds = %29, %22
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @AslMapNamedOpcodeToDataType(i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PARSEOP_NAME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %59, %51
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @AcpiNsOpensScope(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65, %62
  %70 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @AcpiUtGetTypeName(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = ptrtoint %struct.TYPE_6__* %77 to i32
  %79 = call i32 @ACPI_DEBUG_PRINT(i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @AcpiDsScopeStackPop(i32* %80)
  br label %82

82:                                               ; preds = %69, %65
  %83 = load i32, i32* @AE_OK, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %20
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32 (%struct.TYPE_6__*, i32, i8*)*) #1

declare dso_local i32 @AslMapNamedOpcodeToDataType(i32) #1

declare dso_local i64 @AcpiNsOpensScope(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i32) #1

declare dso_local i32 @AcpiDsScopeStackPop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

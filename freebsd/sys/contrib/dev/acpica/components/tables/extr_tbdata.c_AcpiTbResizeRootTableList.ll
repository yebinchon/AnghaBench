; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbdata.c_AcpiTbResizeRootTableList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbdata.c_AcpiTbResizeRootTableList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@TbResizeRootTableList = common dso_local global i32 0, align 4
@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ACPI_ROOT_ALLOW_RESIZE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Resize of Root Table Array is not allowed\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@ACPI_ROOT_ORIGIN_ALLOCATED = common dso_local global i32 0, align 4
@ACPI_ROOT_TABLE_SIZE_INCREMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not allocate new root table array\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiTbResizeRootTableList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @TbResizeRootTableList, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %10 = load i32, i32* @ACPI_ROOT_ALLOW_RESIZE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @AE_INFO, align 4
  %15 = call i32 @ACPI_ERROR(i32 ptrtoint ([42 x i8]* @.str to i32))
  %16 = load i32, i32* @AE_SUPPORT, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %13, %0
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %20 = load i32, i32* @ACPI_ROOT_ORIGIN_ALLOCATED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  store i64 %24, i64* %3, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 2), align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @ACPI_ROOT_TABLE_SIZE_INCREMENT, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_7__* @ACPI_ALLOCATE_ZEROED(i32 %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %2, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @AE_INFO, align 4
  %41 = call i32 @ACPI_ERROR(i32 ptrtoint ([40 x i8]* @.str.1 to i32))
  %42 = load i32, i32* @AE_NO_MEMORY, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  br label %44

44:                                               ; preds = %39, %27
  store i64 0, i64* %4, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 3), align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %70, %47
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 3), align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 3), align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = call i32 @memcpy(%struct.TYPE_7__* %62, %struct.TYPE_7__* %65, i32 8)
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %59, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %48

73:                                               ; preds = %48
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %75 = load i32, i32* @ACPI_ROOT_ORIGIN_ALLOCATED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 3), align 8
  %80 = call i32 @ACPI_FREE(%struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %44
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 3), align 8
  %84 = load i64, i64* %5, align 8
  store i64 %84, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  %85 = load i64, i64* %4, align 8
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 2), align 8
  %86 = load i32, i32* @ACPI_ROOT_ORIGIN_ALLOCATED, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %88 = or i32 %87, %86
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %89 = load i32, i32* @AE_OK, align 4
  %90 = call i32 @return_ACPI_STATUS(i32 %89)
  %91 = load i32, i32* %1, align 4
  ret i32 %91
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.TYPE_7__* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

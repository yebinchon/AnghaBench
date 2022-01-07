; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbdata.c_AcpiTbTerminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbdata.c_AcpiTbTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32* }

@TbTerminate = common dso_local global i32 0, align 4
@ACPI_MTX_TABLES = common dso_local global i32 0, align 4
@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ACPI_ROOT_ORIGIN_ALLOCATED = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ACPI Tables freed\0A\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiTbTerminate() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @TbTerminate, align 4
  %3 = call i32 @ACPI_FUNCTION_TRACE(i32 %2)
  %4 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %5 = call i32 @AcpiUtAcquireMutex(i32 %4)
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 2), align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @AcpiTbUninstallTable(i32* %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %6

18:                                               ; preds = %6
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  %20 = load i32, i32* @ACPI_ROOT_ORIGIN_ALLOCATED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 2), align 8
  %25 = call i32 @ACPI_FREE(i32* %24)
  br label %26

26:                                               ; preds = %23, %18
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %27 = load i32, i32* @ACPI_DB_INFO, align 4
  %28 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([19 x i8]* @.str to i32))
  %29 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %30 = call i32 @AcpiUtReleaseMutex(i32 %29)
  %31 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i32 @AcpiTbUninstallTable(i32*) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

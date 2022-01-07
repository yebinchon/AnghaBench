; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utmutex.c_AcpiUtReleaseMutex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utmutex.c_AcpiUtReleaseMutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@UtReleaseMutex = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Thread %u releasing Mutex [%s]\0A\00", align 1
@ACPI_MAX_MUTEX = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AcpiGbl_MutexInfo = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_MUTEX_NOT_ACQUIRED = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Mutex [%s] (0x%X) is not acquired, cannot release\00", align 1
@AE_NOT_ACQUIRED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_NUM_MUTEX = common dso_local global i64 0, align 8
@AE_RELEASE_DEADLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtReleaseMutex(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @UtReleaseMutex, align 4
  %5 = call i32 @ACPI_FUNCTION_NAME(i32 %4)
  %6 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %7 = call i64 (...) @AcpiOsGetThreadId()
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @AcpiUtGetMutexName(i64 %8)
  %10 = call i32 @ACPI_DEBUG_PRINT(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ACPI_MAX_MUTEX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_MutexInfo, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACPI_MUTEX_NOT_ACQUIRED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @AcpiUtGetMutexName(i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @ACPI_ERROR(i32 %29)
  %31 = load i32, i32* @AE_NOT_ACQUIRED, align 4
  store i32 %31, i32* %2, align 4
  br label %45

32:                                               ; preds = %16
  %33 = load i64, i64* @ACPI_MUTEX_NOT_ACQUIRED, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_MutexInfo, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_MutexInfo, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @AcpiOsReleaseMutex(i32 %42)
  %44 = load i32, i32* @AE_OK, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %32, %24, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @AcpiOsGetThreadId(...) #1

declare dso_local i32 @AcpiUtGetMutexName(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

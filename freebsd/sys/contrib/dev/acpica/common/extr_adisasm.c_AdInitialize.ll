; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdInitialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not initialize ACPICA subsystem: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not initialize ACPICA globals: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Could not initialize ACPICA mutex objects: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Could not initialize ACPICA namespace: %s\0A\00", align 1
@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LocalTables = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdInitialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @AcpiOsInitialize()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @ACPI_FAILURE(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @AcpiFormatException(i32 %9)
  %11 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %49

13:                                               ; preds = %0
  %14 = call i32 (...) @AcpiUtInitGlobals()
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i8* @AcpiFormatException(i32 %20)
  %22 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %49

24:                                               ; preds = %13
  %25 = call i32 (...) @AcpiUtMutexInitialize()
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i8* @AcpiFormatException(i32 %31)
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* %1, align 4
  br label %49

35:                                               ; preds = %24
  %36 = call i32 (...) @AcpiNsRootInitialize()
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i8* @AcpiFormatException(i32 %42)
  %44 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %1, align 4
  br label %49

46:                                               ; preds = %35
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 2), align 8
  %47 = load i32, i32* @LocalTables, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_RootTableList, i32 0, i32 1), align 4
  %48 = load i32, i32* @AE_OK, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %46, %40, %29, %18, %7
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @AcpiOsInitialize(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiUtInitGlobals(...) #1

declare dso_local i32 @AcpiUtMutexInitialize(...) #1

declare dso_local i32 @AcpiNsRootInitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

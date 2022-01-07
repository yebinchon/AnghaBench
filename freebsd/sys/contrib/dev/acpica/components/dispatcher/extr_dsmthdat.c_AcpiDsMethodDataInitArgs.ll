; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsmthdat.c_AcpiDsMethodDataInitArgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsmthdat.c_AcpiDsMethodDataInitArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DsMethodDataInitArgs = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No parameter list passed to method\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_METHOD_NUM_ARGS = common dso_local global i64 0, align 8
@ACPI_REFCLASS_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%u args passed to method\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsMethodDataInitArgs(i32** %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @DsMethodDataInitArgs, align 4
  %11 = load i32**, i32*** %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, i32** %11)
  %13 = load i32**, i32*** %5, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ACPI_DB_EXEC, align 4
  %17 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([36 x i8]* @.str to i32))
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %15, %3
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ACPI_METHOD_NUM_ARGS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32**, i32*** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br label %35

35:                                               ; preds = %29, %25, %21
  %36 = phi i1 [ false, %25 ], [ false, %21 ], [ %34, %29 ]
  br i1 %36, label %37, label %55

37:                                               ; preds = %35
  %38 = load i32, i32* @ACPI_REFCLASS_ARG, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i32**, i32*** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @AcpiDsMethodDataSetValue(i32 %38, i64 %39, i32* %43, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %21

55:                                               ; preds = %35
  %56 = load i32, i32* @ACPI_DB_EXEC, align 4
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ACPI_DEBUG_PRINT(i32 %58)
  %60 = load i32, i32* @AE_OK, align 4
  %61 = call i32 @return_ACPI_STATUS(i32 %60)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32**) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsMethodDataSetValue(i32, i64, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

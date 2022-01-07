; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_getopt.c_AcpiGetoptArgument.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_getopt.c_AcpiGetoptArgument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AcpiGbl_Optind = common dso_local global i64 0, align 8
@CurrentCharPtr = common dso_local global i32 0, align 4
@AcpiGbl_Optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0AOption requires an argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiGetoptArgument(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i64, i64* @AcpiGbl_Optind, align 8
  %7 = add i64 %6, -1
  store i64 %7, i64* @AcpiGbl_Optind, align 8
  %8 = load i32, i32* @CurrentCharPtr, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @CurrentCharPtr, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i64, i64* @AcpiGbl_Optind, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @CurrentCharPtr, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = load i64, i64* @AcpiGbl_Optind, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* @AcpiGbl_Optind, align 8
  %25 = getelementptr inbounds i8*, i8** %22, i64 %23
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @CurrentCharPtr, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** @AcpiGbl_Optarg, align 8
  br label %46

31:                                               ; preds = %2
  %32 = load i64, i64* @AcpiGbl_Optind, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* @AcpiGbl_Optind, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @ACPI_OPTION_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 1, i32* @CurrentCharPtr, align 4
  store i32 -1, i32* %3, align 4
  br label %47

39:                                               ; preds = %31
  %40 = load i8**, i8*** %5, align 8
  %41 = load i64, i64* @AcpiGbl_Optind, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* @AcpiGbl_Optind, align 8
  %43 = getelementptr inbounds i8*, i8** %40, i64 %41
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** @AcpiGbl_Optarg, align 8
  br label %45

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %21
  store i32 1, i32* @CurrentCharPtr, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ACPI_OPTION_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

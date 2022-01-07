; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asluuid.c_AuConvertUuidToString.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asluuid.c_AuConvertUuidToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@UUID_BUFFER_LENGTH = common dso_local global i64 0, align 8
@AcpiGbl_MapToUuidOffset = common dso_local global i64* null, align 8
@UUID_HYPHEN4_OFFSET = common dso_local global i64 0, align 8
@UUID_HYPHEN3_OFFSET = common dso_local global i64 0, align 8
@UUID_HYPHEN2_OFFSET = common dso_local global i64 0, align 8
@UUID_HYPHEN1_OFFSET = common dso_local global i64 0, align 8
@UUID_STRING_LENGTH = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AuConvertUuidToString(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %13, i32* %3, align 4
  br label %63

14:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @UUID_BUFFER_LENGTH, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call signext i8 @AcpiUtHexToAsciiChar(i8 signext %23, i32 4)
  %25 = load i8*, i8** %5, align 8
  %26 = load i64*, i64** @AcpiGbl_MapToUuidOffset, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8 %24, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @AcpiUtHexToAsciiChar(i8 signext %34, i32 0)
  %36 = load i8*, i8** %5, align 8
  %37 = load i64*, i64** @AcpiGbl_MapToUuidOffset, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  store i8 %35, i8* %42, align 1
  br label %43

43:                                               ; preds = %19
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %15

46:                                               ; preds = %15
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* @UUID_HYPHEN4_OFFSET, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 45, i8* %49, align 1
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* @UUID_HYPHEN3_OFFSET, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 45, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* @UUID_HYPHEN2_OFFSET, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 45, i8* %55, align 1
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* @UUID_HYPHEN1_OFFSET, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 45, i8* %58, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* @UUID_STRING_LENGTH, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* @AE_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %46, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local signext i8 @AcpiUtHexToAsciiChar(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

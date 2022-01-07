; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asluuid.c_AuValidateUuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asluuid.c_AuValidateUuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UUID_STRING_LENGTH = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@UUID_HYPHEN1_OFFSET = common dso_local global i64 0, align 8
@UUID_HYPHEN2_OFFSET = common dso_local global i64 0, align 8
@UUID_HYPHEN3_OFFSET = common dso_local global i64 0, align 8
@UUID_HYPHEN4_OFFSET = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AuValidateUuid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @UUID_STRING_LENGTH, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %7
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @UUID_STRING_LENGTH, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @UUID_HYPHEN1_OFFSET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @UUID_HYPHEN2_OFFSET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @UUID_HYPHEN3_OFFSET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @UUID_HYPHEN4_OFFSET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31, %27, %23, %19
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 45
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %43, i32* %2, align 4
  br label %62

44:                                               ; preds = %35
  br label %56

45:                                               ; preds = %31
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @isxdigit(i32 %50) #3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %54, i32* %2, align 4
  br label %62

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %15

60:                                               ; preds = %15
  %61 = load i32, i32* @AE_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %53, %42, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

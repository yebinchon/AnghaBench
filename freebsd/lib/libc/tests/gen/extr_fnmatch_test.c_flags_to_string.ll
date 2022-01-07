; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/gen/extr_fnmatch_test.c_flags_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/gen/extr_fnmatch_test.c_flags_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flags_to_string.flagvalues = internal constant [6 x i32] [i32 130, i32 129, i32 128, i32 131, i32 132, i32 0], align 16
@flags_to_string.flagnames = internal constant [67 x i8] c"FNM_NOESCAPE\00FNM_PATHNAME\00FNM_PERIOD\00FNM_LEADING_DIR\00FNM_CASEFOLD\00\00", align 16
@flags_to_string.result = internal global [81 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @flags_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flags_to_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @flags_to_string.result, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @flags_to_string.flagnames, i64 0, i64 0), i8** %6, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* @flags_to_string.flagvalues, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %7
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* @flags_to_string.flagvalues, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %12
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, getelementptr inbounds ([81 x i8], [81 x i8]* @flags_to_string.result, i64 0, i64 0)
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  store i8 124, i8* %25, align 1
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memcpy(i8* %28, i8* %29, i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* @flags_to_string.flagvalues, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %27, %12
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %7

50:                                               ; preds = %7
  %51 = load i8*, i8** %3, align 8
  %52 = icmp eq i8* %51, getelementptr inbounds ([81 x i8], [81 x i8]* @flags_to_string.result, i64 0, i64 0)
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @memcpy(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %66

56:                                               ; preds = %50
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %65

63:                                               ; preds = %56
  %64 = load i8*, i8** %3, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %53
  ret i8* getelementptr inbounds ([81 x i8], [81 x i8]* @flags_to_string.result, i64 0, i64 0)
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_file_contains_no_invalid_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_file_contains_no_invalid_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't read file: %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid string in %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_file_contains_no_invalid_strings(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @slurpfile(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (i8*, i32, i8*, i8*, ...) @failure_start(i8* %17, i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load i8*, i8** %10, align 8
  %32 = load i8**, i8*** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32* @strstr(i8* %31, i8* %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i8**, i8*** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @failure_start(i8* %40, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %47)
  %49 = call i32 @failure_finish(i32* null)
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  store i32 0, i32* %5, align 4
  br label %59

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %23

56:                                               ; preds = %23
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @free(i8* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %39, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i8* @slurpfile(i32*, i8*, i8*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

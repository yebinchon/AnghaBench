; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_memory_filled_with.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_memory_filled_with.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"%s (size %d) not filled with %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"   Only %d bytes were correct\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_memory_filled_with(i8* %0, i32 %1, i8* %2, i8* %3, i64 %4, i8* %5, i8 signext %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i8 %6, i8* %17, align 1
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %23 = load i8*, i8** %13, align 8
  store i8* %23, i8** %20, align 8
  store i64 0, i64* %21, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @assertion_count(i8* %25, i32 %26)
  store i64 0, i64* %22, align 8
  br label %28

28:                                               ; preds = %45, %9
  %29 = load i64, i64* %22, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i8*, i8** %20, align 8
  %34 = load i64, i64* %22, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %17, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i64, i64* %21, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %21, align 8
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %22, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %22, align 8
  br label %28

48:                                               ; preds = %28
  %49 = load i64, i64* %21, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %66

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i64, i64* %15, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %18, align 8
  %60 = call i32 @failure_start(i8* %54, i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %58, i8* %59)
  %61 = load i64, i64* %21, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @logprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i8*, i8** %19, align 8
  %65 = call i32 @failure_finish(i8* %64)
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %53, %52
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @logprintf(i8*, i32) #1

declare dso_local i32 @failure_finish(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

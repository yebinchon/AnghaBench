; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_equal_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_equal_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s != %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_equal_string(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @assertion_count(i8* %20, i32 %21)
  %23 = load i8*, i8** %12, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %8
  store i32 1, i32* %9, align 4
  br label %68

38:                                               ; preds = %32, %29, %26
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @failure_start(i8* %39, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %18, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i8*, i8** %13, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @strdump(i8* %56, i8* %57, i32 %58, i32 %59)
  %61 = load i8*, i8** %15, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @strdump(i8* %61, i8* %62, i32 %63, i32 %64)
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @failure_finish(i8* %66)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %55, %37
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strdump(i8*, i8*, i32, i32) #1

declare dso_local i32 @failure_finish(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

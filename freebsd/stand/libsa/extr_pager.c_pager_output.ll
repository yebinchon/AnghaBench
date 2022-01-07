; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pager.c_pager_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pager.c_pager_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_freelines = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pager_prompt1 = common dso_local global i8* null, align 8
@p_maxlines = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D%s\0D\00", align 1
@pager_blank = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pager_output(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %51, %8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %52

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @putchar(i8 signext %17)
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %51

24:                                               ; preds = %15
  %25 = load i64, i64* @p_freelines, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* @p_freelines, align 8
  %27 = load i64, i64* @p_freelines, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i8*, i8** @pager_prompt1, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %42, %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = call i32 (...) @getchar()
  switch i32 %36, label %41 [
    i32 13, label %37
    i32 10, label %37
    i32 32, label %38
    i32 113, label %40
    i32 81, label %40
  ]

37:                                               ; preds = %35, %35
  store i64 1, i64* @p_freelines, align 8
  store i32 1, i32* %4, align 4
  br label %42

38:                                               ; preds = %35
  %39 = load i64, i64* @p_maxlines, align 8
  store i64 %39, i64* @p_freelines, align 8
  store i32 1, i32* %4, align 4
  br label %42

40:                                               ; preds = %35, %35
  store i32 2, i32* %4, align 4
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %40, %38, %37
  br label %32

43:                                               ; preds = %32
  %44 = load i8*, i8** @pager_blank, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %52

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %15
  br label %9

52:                                               ; preds = %48, %14, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

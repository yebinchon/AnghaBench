; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_font.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_FONTPREV = common dso_local global i32 0, align 4
@ESCAPE_FONTBOLD = common dso_local global i32 0, align 4
@ESCAPE_FONTITALIC = common dso_local global i32 0, align 4
@ESCAPE_FONTROMAN = common dso_local global i32 0, align 4
@ESCAPE_FONTBI = common dso_local global i32 0, align 4
@ESCAPE_ERROR = common dso_local global i32 0, align 4
@ESCAPE_FONTCW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mandoc_font(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %55 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %26
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @ESCAPE_FONTPREV, align 4
  store i32 %8, i32* %3, align 4
  br label %57

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %24 [
    i32 66, label %14
    i32 51, label %14
    i32 73, label %16
    i32 50, label %16
    i32 80, label %18
    i32 82, label %20
    i32 49, label %20
    i32 52, label %22
  ]

14:                                               ; preds = %9, %9
  %15 = load i32, i32* @ESCAPE_FONTBOLD, align 4
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %9, %9
  %17 = load i32, i32* @ESCAPE_FONTITALIC, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %9
  %19 = load i32, i32* @ESCAPE_FONTPREV, align 4
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %9, %9
  %21 = load i32, i32* @ESCAPE_FONTROMAN, align 4
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %9
  %23 = load i32, i32* @ESCAPE_FONTBI, align 4
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %9
  %25 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %53 [
    i32 66, label %31
    i32 67, label %40
  ]

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %38 [
    i32 73, label %36
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @ESCAPE_FONTBI, align 4
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %31
  %39 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %26
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %51 [
    i32 66, label %45
    i32 73, label %47
    i32 82, label %49
    i32 87, label %49
  ]

45:                                               ; preds = %40
  %46 = load i32, i32* @ESCAPE_FONTBOLD, align 4
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %40
  %48 = load i32, i32* @ESCAPE_FONTITALIC, align 4
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %40, %40
  %50 = load i32, i32* @ESCAPE_FONTCW, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %40
  %52 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %26
  %54 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %2
  %56 = load i32, i32* @ESCAPE_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53, %51, %49, %47, %45, %38, %36, %24, %22, %20, %18, %16, %14, %7
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

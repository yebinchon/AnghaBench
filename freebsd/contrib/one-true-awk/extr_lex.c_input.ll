; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yysptr = common dso_local global i64* null, align 8
@yysbuf = common dso_local global i64* null, align 8
@lexprog = external dso_local global i8*, align 8
@EOF = common dso_local global i32 0, align 4
@ep = common dso_local global i32* null, align 8
@ebuf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input() #0 {
  %1 = alloca i32, align 4
  %2 = load i64*, i64** @yysptr, align 8
  %3 = load i64*, i64** @yysbuf, align 8
  %4 = icmp ugt i64* %2, %3
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i64*, i64** @yysptr, align 8
  %7 = getelementptr inbounds i64, i64* %6, i32 -1
  store i64* %7, i64** @yysptr, align 8
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  br label %25

10:                                               ; preds = %0
  %11 = load i8*, i8** @lexprog, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i8*, i8** @lexprog, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** @lexprog, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** @lexprog, align 8
  br label %21

21:                                               ; preds = %18, %13
  br label %24

22:                                               ; preds = %10
  %23 = call i32 (...) @pgetc()
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %21
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @EOF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32*, i32** @ep, align 8
  %32 = load i32*, i32** @ebuf, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = icmp uge i32* %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32*, i32** @ebuf, align 8
  store i32* %36, i32** @ep, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %1, align 4
  %39 = load i32*, i32** @ep, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** @ep, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** @ep, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @pgetc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_main.c_pgetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_main.c_pgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yyin = common dso_local global i32* null, align 8
@curpfile = common dso_local global i64 0, align 8
@npfile = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@pfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"can't open file %s\00", align 1
@lineno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgetc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %50, %0
  %4 = load i32*, i32** @yyin, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = load i64, i64* @curpfile, align 8
  %8 = load i64, i64* @npfile, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @EOF, align 4
  store i32 %11, i32* %1, align 4
  br label %53

12:                                               ; preds = %6
  %13 = load i32*, i32** @pfile, align 8
  %14 = load i64, i64* @curpfile, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32*, i32** @stdin, align 8
  store i32* %20, i32** @yyin, align 8
  br label %35

21:                                               ; preds = %12
  %22 = load i32*, i32** @pfile, align 8
  %23 = load i64, i64* @curpfile, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** @yyin, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32*, i32** @pfile, align 8
  %30 = load i64, i64* @curpfile, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @FATAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  br label %35

35:                                               ; preds = %34, %19
  store i32 1, i32* @lineno, align 4
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32*, i32** @yyin, align 8
  %38 = call i32 @getc(i32* %37)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  store i32 %42, i32* %1, align 4
  br label %53

43:                                               ; preds = %36
  %44 = load i32*, i32** @yyin, align 8
  %45 = load i32*, i32** @stdin, align 8
  %46 = icmp ne i32* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32*, i32** @yyin, align 8
  %49 = call i32 @fclose(i32* %48)
  br label %50

50:                                               ; preds = %47, %43
  store i32* null, i32** @yyin, align 8
  %51 = load i64, i64* @curpfile, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* @curpfile, align 8
  br label %3

53:                                               ; preds = %41, %10
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

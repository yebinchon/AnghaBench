; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_append_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_append_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@H_NSAVE_FP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @append_history(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** @h, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** @e, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = call i32 (...) @rl_initialize()
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i8* (...) @_default_history_file()
  store i8* %20, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load i32*, i32** @h, align 8
  %32 = load i32, i32* @H_NSAVE_FP, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @history(i32* %31, i32* %6, i32 %32, i64 %34, i32* %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load i32, i32* @errno, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @errno, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %30
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fclose(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %45, %28, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i8* @_default_history_file(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @history(i32*, i32*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

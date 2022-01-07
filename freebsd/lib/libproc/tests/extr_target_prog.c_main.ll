; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_target_prog.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_target_prog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@usr1 = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@saw = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @bar()
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %10, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load i32, i32* @SIGUSR1, align 4
  %22 = load i32, i32* @usr1, align 4
  %23 = call i64 @signal(i32 %21, i32 %22)
  %24 = load i64, i64* @SIG_ERR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = call i32 (...) @getpid()
  %30 = load i32, i32* @SIGUSR1, align 4
  %31 = call i64 @kill(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* @saw, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %14, %11
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @bar(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

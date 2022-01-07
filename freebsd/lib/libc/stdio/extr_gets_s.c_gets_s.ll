; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_gets_s.c_gets_s.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_gets_s.c_gets_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"gets_s : str is NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RSIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"gets_s : n > RSIZE_MAX\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gets_s : n == 0\00", align 1
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gets_s(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i8* null, i8** %3, align 8
  br label %35

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @RSIZE_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i8* null, i8** %3, align 8
  br label %35

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i8* null, i8** %3, align 8
  br label %35

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @stdin, align 4
  %29 = call i32 @FLOCKFILE_CANCELSAFE(i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i8* @_gets_s(i8* %30, i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %27, %22, %16, %9
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i32 @__throw_constraint_handler_s(i8*, i32) #1

declare dso_local i32 @FLOCKFILE_CANCELSAFE(i32) #1

declare dso_local i8* @_gets_s(i8*, i64) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

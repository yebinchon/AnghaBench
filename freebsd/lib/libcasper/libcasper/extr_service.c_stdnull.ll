; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_stdnull.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_stdnull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to detach from session\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unable to cover stdin\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to cover stdout\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Unable to cover stderr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stdnull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stdnull() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @_PATH_DEVNULL, align 4
  %3 = load i32, i32* @O_RDWR, align 4
  %4 = call i32 @open(i32 %2, i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @_PATH_DEVNULL, align 4
  %9 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @setsid()
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @STDIN_FILENO, align 4
  %18 = call i32 @dup2(i32 %16, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @STDOUT_FILENO, align 4
  %25 = call i32 @dup2(i32 %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @STDERR_FILENO, align 4
  %32 = call i32 @dup2(i32 %30, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @STDERR_FILENO, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @close(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

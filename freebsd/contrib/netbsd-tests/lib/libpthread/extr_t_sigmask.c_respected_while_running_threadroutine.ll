; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_sigmask.c_respected_while_running_threadroutine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_sigmask.c_respected_while_running_threadroutine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGUSR1 = common dso_local global i32 0, align 4
@flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Success: Both handlers ran in order\0A\00", align 1
@flag2 = common dso_local global i32 0, align 4
@thr_usr1 = common dso_local global i64 0, align 8
@thr_usr2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Success: Handlers were invoked by different threads\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failure: flag=%d, flag2=%d, thr1=%p, thr2=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @respected_while_running_threadroutine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @respected_while_running_threadroutine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @getpid()
  %4 = load i32, i32* @SIGUSR1, align 4
  %5 = call i32 @kill(i32 %3, i32 %4)
  %6 = call i32 @sleep(i32 1)
  %7 = load i32, i32* @flag, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

11:                                               ; preds = %1
  %12 = load i32, i32* @flag, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32, i32* @flag2, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* @thr_usr1, align 8
  %19 = load i64, i64* @thr_usr2, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %32

23:                                               ; preds = %17, %14, %11
  %24 = load i32, i32* @flag, align 4
  %25 = load i32, i32* @flag2, align 4
  %26 = load i64, i64* @thr_usr1, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i64, i64* @thr_usr2, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25, i8* %27, i8* %29)
  %31 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %23, %21
  br label %33

33:                                               ; preds = %32, %9
  ret i8* null
}

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

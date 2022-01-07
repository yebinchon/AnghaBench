; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_thread.c_rumptest_threadjoin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_thread.c_rumptest_threadjoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp = type { i32 }

@PRI_NONE = common dso_local global i32 0, align 4
@KTHREAD_MUSTJOIN = common dso_local global i32 0, align 4
@KTHREAD_MPSAFE = common dso_local global i32 0, align 4
@jointhread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"jointest\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"thread creation failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"thread join failed: %d\00", align 1
@testit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"new thread did not run\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rumptest_threadjoin() #0 {
  %1 = alloca %struct.lwp*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PRI_NONE, align 4
  %4 = load i32, i32* @KTHREAD_MUSTJOIN, align 4
  %5 = load i32, i32* @KTHREAD_MPSAFE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @jointhread, align 4
  %8 = call i32 @kthread_create(i32 %3, i32 %6, i32* null, i32 %7, i32* null, %struct.lwp** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load %struct.lwp*, %struct.lwp** %1, align 8
  %16 = call i32 @kthread_join(%struct.lwp* %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @testit, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @kthread_create(i32, i32, i32*, i32, i32*, %struct.lwp**, i8*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @kthread_join(%struct.lwp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

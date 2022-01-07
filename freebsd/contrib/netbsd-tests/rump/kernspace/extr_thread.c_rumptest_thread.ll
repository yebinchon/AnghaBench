; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_thread.c_rumptest_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_thread.c_rumptest_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp = type { i32 }

@mtx = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@IPL_NONE = common dso_local global i32 0, align 4
@cv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"jooei\00", align 1
@PRI_NONE = common dso_local global i32 0, align 4
@KTHREAD_MPSAFE = common dso_local global i32 0, align 4
@thethread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ktest\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"thread creation failed: %d\00", align 1
@value = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"take1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rumptest_thread() #0 {
  %1 = alloca %struct.lwp*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MUTEX_DEFAULT, align 4
  %4 = load i32, i32* @IPL_NONE, align 4
  %5 = call i32 @mutex_init(i32* @mtx, i32 %3, i32 %4)
  %6 = call i32 @cv_init(i32* @cv, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @PRI_NONE, align 4
  %8 = load i32, i32* @KTHREAD_MPSAFE, align 4
  %9 = load i32, i32* @thethread, align 4
  %10 = call i32 @kthread_create(i32 %7, i32 %8, i32* null, i32 %9, i32* null, %struct.lwp** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = call i32 @mutex_enter(i32* @mtx)
  br label %18

18:                                               ; preds = %21, %16
  %19 = load i64, i64* @value, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @cv_wait(i32* @cv, i32* @mtx)
  br label %18

23:                                               ; preds = %18
  %24 = call i32 @mutex_exit(i32* @mtx)
  %25 = call i32 @kpause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 1, i32* null)
  ret void
}

declare dso_local i32 @mutex_init(i32*, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @kthread_create(i32, i32, i32*, i32, i32*, %struct.lwp**, i8*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kpause(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

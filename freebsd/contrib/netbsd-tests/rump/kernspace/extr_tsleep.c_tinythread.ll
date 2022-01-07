; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_tsleep.c_tinythread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_tsleep.c_tinythread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tinythread.wakeups = internal global i32 0, align 4
@mymtx = common dso_local global i32 0, align 4
@NTHREADS = common dso_local global i32 0, align 4
@PNORELOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"haa\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mtsleep failed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kepuli\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"mtsleep unexpected return value %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tinythread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tinythread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = urem i64 %7, 2
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %42, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 1000
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = call i32 @mutex_enter(i32* @mymtx)
  %16 = call i32 @wakeup(void (i8*)* @tinythread)
  %17 = load i32, i32* @tinythread.wakeups, align 4
  %18 = load i32, i32* @NTHREADS, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @mutex_exit(i32* @mymtx)
  br label %45

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @PNORELOCK, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 0, %26 ], [ %28, %27 ]
  %31 = call i32 @mtsleep(void (i8*)* @tinythread, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32* @mymtx)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @mutex_exit(i32* @mymtx)
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %11

45:                                               ; preds = %21, %11
  %46 = call i32 @mutex_enter(i32* @mymtx)
  %47 = load i32, i32* @tinythread.wakeups, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @tinythread.wakeups, align 4
  %49 = call i32 @wakeup(void (i8*)* @tinythread)
  %50 = load i32, i32* @PNORELOCK, align 4
  %51 = call i32 @mtsleep(void (i8*)* @rumptest_tsleep, i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 1, i32* @mymtx)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @EWOULDBLOCK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = call i32 @kthread_exit(i32 0)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @wakeup(void (i8*)*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @mtsleep(void (i8*)*, i32, i8*, i32, i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local void @rumptest_tsleep(i8*) #1

declare dso_local i32 @kthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

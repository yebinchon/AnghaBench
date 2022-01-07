; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_tsleep.c_rumptest_tsleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_tsleep.c_rumptest_tsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp = type { i32 }

@NTHREADS = common dso_local global i32 0, align 4
@mymtx = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@IPL_NONE = common dso_local global i32 0, align 4
@PRI_NONE = common dso_local global i32 0, align 4
@KTHREAD_MUSTJOIN = common dso_local global i32 0, align 4
@KTHREAD_MPSAFE = common dso_local global i32 0, align 4
@tinythread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"thread create failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rumptest_tsleep() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @NTHREADS, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca %struct.lwp*, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @MUTEX_DEFAULT, align 4
  %10 = load i32, i32* @IPL_NONE, align 4
  %11 = call i32 @mutex_init(i32* @mymtx, i32 %9, i32 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %35, %0
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NTHREADS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32, i32* @PRI_NONE, align 4
  %18 = load i32, i32* @KTHREAD_MUSTJOIN, align 4
  %19 = load i32, i32* @KTHREAD_MPSAFE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @tinythread, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.lwp*, %struct.lwp** %8, i64 %26
  %28 = call i32 @kthread_create(i32 %17, i32 %20, i32* null, i32 %21, i8* %24, %struct.lwp** %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %12

38:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @NTHREADS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.lwp*, %struct.lwp** %8, i64 %45
  %47 = load %struct.lwp*, %struct.lwp** %46, align 8
  %48 = call i32 @kthread_join(%struct.lwp* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %39

52:                                               ; preds = %39
  %53 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_init(i32*, i32, i32) #2

declare dso_local i32 @kthread_create(i32, i32, i32*, i32, i8*, %struct.lwp**, i8*) #2

declare dso_local i32 @panic(i8*, i32) #2

declare dso_local i32 @kthread_join(%struct.lwp*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

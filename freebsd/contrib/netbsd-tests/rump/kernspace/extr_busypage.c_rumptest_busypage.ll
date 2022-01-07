; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_busypage.c_rumptest_busypage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_busypage.c_rumptest_busypage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.lwp = type { i32 }

@tcv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"napina\00", align 1
@uobj = common dso_local global %struct.TYPE_4__* null, align 8
@testpg = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't create vm page\00", align 1
@PRI_NONE = common dso_local global i32 0, align 4
@KTHREAD_MUSTJOIN = common dso_local global i32 0, align 4
@KTHREAD_MPSAFE = common dso_local global i32 0, align 4
@thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"jointest\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"thread creation failed: %d\00", align 1
@threadrun = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"thread join failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rumptest_busypage() #0 {
  %1 = alloca %struct.lwp*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @cv_init(i32* @tcv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = call %struct.TYPE_4__* @uao_create(i32 1, i32 0)
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** @uobj, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mutex_enter(i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %10 = call i32* @uvm_pagealloc(%struct.TYPE_4__* %9, i32 0, i32* null, i32 0)
  store i32* %10, i32** @testpg, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mutex_exit(i32 %13)
  %15 = load i32*, i32** @testpg, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  %20 = load i32, i32* @PRI_NONE, align 4
  %21 = load i32, i32* @KTHREAD_MUSTJOIN, align 4
  %22 = load i32, i32* @KTHREAD_MPSAFE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @thread, align 4
  %25 = call i32 @kthread_create(i32 %20, i32 %23, i32* null, i32 %24, i32* null, %struct.lwp** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mutex_enter(i32 %34)
  br label %36

36:                                               ; preds = %40, %31
  %37 = load i32, i32* @threadrun, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cv_wait(i32* @tcv, i32 %43)
  br label %36

45:                                               ; preds = %36
  %46 = call i32 @uvm_page_unbusy(i32** @testpg, i32 1)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mutex_exit(i32 %49)
  %51 = load %struct.lwp*, %struct.lwp** %1, align 8
  %52 = call i32 @kthread_join(%struct.lwp* %51)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %2, align 4
  %57 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  ret void
}

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @uao_create(i32, i32) #1

declare dso_local i32 @mutex_enter(i32) #1

declare dso_local i32* @uvm_pagealloc(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @mutex_exit(i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @kthread_create(i32, i32, i32*, i32, i32*, %struct.lwp**, i8*) #1

declare dso_local i32 @cv_wait(i32*, i32) #1

declare dso_local i32 @uvm_page_unbusy(i32**, i32) #1

declare dso_local i32 @kthread_join(%struct.lwp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

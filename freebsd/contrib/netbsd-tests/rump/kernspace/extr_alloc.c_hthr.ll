; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_alloc.c_hthr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_alloc.c_hthr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mtx = common dso_local global i32 0, align 4
@curstat = common dso_local global i32 0, align 4
@kcv = common dso_local global i32 0, align 4
@kernel_map = common dso_local global %struct.TYPE_2__* null, align 8
@VM_MAP_WANTVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"take5\00", align 1
@store = common dso_local global i32* null, align 8
@pp1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hthr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hthr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @mutex_enter(i32* @mtx)
  %5 = load i32, i32* @curstat, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @curstat, align 4
  %7 = call i32 @cv_signal(i32* @kcv)
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i32, i32* @curstat, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @cv_wait(i32* @kcv, i32* @mtx)
  br label %8

13:                                               ; preds = %8
  %14 = call i32 @mutex_exit(i32* @mtx)
  br label %15

15:                                               ; preds = %22, %13
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kernel_map, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VM_MAP_WANTVA, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @kpause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32* null)
  br label %15

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** @store, align 8
  %28 = call i32 @__arraycount(i32* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32*, i32** @store, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pool_put(i32* @pp1, i32 %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %25

40:                                               ; preds = %25
  %41 = call i32 @kthread_exit(i32 0)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kpause(i8*, i32, i32, i32*) #1

declare dso_local i32 @__arraycount(i32*) #1

declare dso_local i32 @pool_put(i32*, i32) #1

declare dso_local i32 @kthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

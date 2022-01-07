; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c_poll_stop_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c_poll_stop_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@rpoll_trace = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"poll_stop_timer(%d)\00", align 1
@tims = common dso_local global %struct.TYPE_2__* null, align 8
@tims_used = common dso_local global i32 0, align 4
@resort = common dso_local global i32 0, align 4
@in_dispatch = common dso_local global i32 0, align 4
@tfd_used = common dso_local global i64 0, align 8
@tfd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poll_stop_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @rpoll_trace, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tims, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @tims_used, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @tims_used, align 4
  store i32 1, i32* @resort, align 4
  %18 = load i32, i32* @in_dispatch, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %41

21:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @tfd_used, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32*, i32** @tfd, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** @tfd, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 -1, i32* %36, align 4
  br label %41

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %22

41:                                               ; preds = %20, %33, %22
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

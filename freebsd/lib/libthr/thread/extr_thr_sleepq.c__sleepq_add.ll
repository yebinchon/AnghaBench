; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sleepq.c__sleepq_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sleepq.c__sleepq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i8*, %struct.sleepqueue* }
%struct.sleepqueue = type { i32, i8*, i32 }
%struct.sleepqueue_chain = type { i32, i32 }

@sq_flink = common dso_local global i32 0, align 4
@sq_hash = common dso_local global i32 0, align 4
@_thr_queuefifo = common dso_local global i32 0, align 4
@wle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sleepq_add(i8* %0, %struct.pthread* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca %struct.sleepqueue_chain*, align 8
  %6 = alloca %struct.sleepqueue*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.pthread* %1, %struct.pthread** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.sleepqueue_chain* @SC_LOOKUP(i8* %7)
  store %struct.sleepqueue_chain* %8, %struct.sleepqueue_chain** %5, align 8
  %9 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.sleepqueue* @lookup(%struct.sleepqueue_chain* %9, i8* %10)
  store %struct.sleepqueue* %11, %struct.sleepqueue** %6, align 8
  %12 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %13 = icmp ne %struct.sleepqueue* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %16 = getelementptr inbounds %struct.sleepqueue, %struct.sleepqueue* %15, i32 0, i32 2
  %17 = load %struct.pthread*, %struct.pthread** %4, align 8
  %18 = getelementptr inbounds %struct.pthread, %struct.pthread* %17, i32 0, i32 1
  %19 = load %struct.sleepqueue*, %struct.sleepqueue** %18, align 8
  %20 = load i32, i32* @sq_flink, align 4
  %21 = call i32 @SLIST_INSERT_HEAD(i32* %16, %struct.sleepqueue* %19, i32 %20)
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.pthread*, %struct.pthread** %4, align 8
  %24 = getelementptr inbounds %struct.pthread, %struct.pthread* %23, i32 0, i32 1
  %25 = load %struct.sleepqueue*, %struct.sleepqueue** %24, align 8
  store %struct.sleepqueue* %25, %struct.sleepqueue** %6, align 8
  %26 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %5, align 8
  %27 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %26, i32 0, i32 1
  %28 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %29 = load i32, i32* @sq_hash, align 4
  %30 = call i32 @LIST_INSERT_HEAD(i32* %27, %struct.sleepqueue* %28, i32 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %33 = getelementptr inbounds %struct.sleepqueue, %struct.sleepqueue* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %22, %14
  %35 = load %struct.pthread*, %struct.pthread** %4, align 8
  %36 = getelementptr inbounds %struct.pthread, %struct.pthread* %35, i32 0, i32 1
  store %struct.sleepqueue* null, %struct.sleepqueue** %36, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load %struct.pthread*, %struct.pthread** %4, align 8
  %39 = getelementptr inbounds %struct.pthread, %struct.pthread* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %5, align 8
  %41 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @_thr_queuefifo, align 4
  %45 = shl i32 %43, %44
  %46 = and i32 %45, 255
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %50 = getelementptr inbounds %struct.sleepqueue, %struct.sleepqueue* %49, i32 0, i32 0
  %51 = load %struct.pthread*, %struct.pthread** %4, align 8
  %52 = load i32, i32* @wle, align 4
  %53 = call i32 @TAILQ_INSERT_HEAD(i32* %50, %struct.pthread* %51, i32 %52)
  br label %60

54:                                               ; preds = %34
  %55 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %56 = getelementptr inbounds %struct.sleepqueue, %struct.sleepqueue* %55, i32 0, i32 0
  %57 = load %struct.pthread*, %struct.pthread** %4, align 8
  %58 = load i32, i32* @wle, align 4
  %59 = call i32 @TAILQ_INSERT_TAIL(i32* %56, %struct.pthread* %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  ret void
}

declare dso_local %struct.sleepqueue_chain* @SC_LOOKUP(i8*) #1

declare dso_local %struct.sleepqueue* @lookup(%struct.sleepqueue_chain*, i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.sleepqueue*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sleepqueue*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pthread*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

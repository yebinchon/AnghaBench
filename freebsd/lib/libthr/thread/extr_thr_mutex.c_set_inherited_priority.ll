; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_set_inherited_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_set_inherited_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32* }
%struct.pthread_mutex = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@mutex_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*, %struct.pthread_mutex*)* @set_inherited_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_inherited_priority(%struct.pthread* %0, %struct.pthread_mutex* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.pthread_mutex*, align 8
  %5 = alloca %struct.pthread_mutex*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store %struct.pthread_mutex* %1, %struct.pthread_mutex** %4, align 8
  %6 = load %struct.pthread*, %struct.pthread** %3, align 8
  %7 = getelementptr inbounds %struct.pthread, %struct.pthread* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %10 = call i64 @mutex_qidx(%struct.pthread_mutex* %9)
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* @mutex_queue, align 4
  %13 = call %struct.pthread_mutex* @TAILQ_LAST(i32* %11, i32 %12)
  store %struct.pthread_mutex* %13, %struct.pthread_mutex** %5, align 8
  %14 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %15 = icmp ne %struct.pthread_mutex* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %18 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %24 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %22, i32* %27, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %30 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 -1, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %16
  ret void
}

declare dso_local %struct.pthread_mutex* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @mutex_qidx(%struct.pthread_mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

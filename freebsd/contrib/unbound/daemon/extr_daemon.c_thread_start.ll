; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_thread_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Could not initialize thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worker*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.worker*
  store %struct.worker* %6, %struct.worker** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.worker*, %struct.worker** %3, align 8
  %8 = getelementptr inbounds %struct.worker, %struct.worker* %7, i32 0, i32 0
  %9 = call i32 @log_thread_set(i32* %8)
  %10 = call i32 (...) @ub_thread_blocksigs()
  %11 = load %struct.worker*, %struct.worker** %3, align 8
  %12 = load %struct.worker*, %struct.worker** %3, align 8
  %13 = getelementptr inbounds %struct.worker, %struct.worker* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.worker*, %struct.worker** %3, align 8
  %18 = getelementptr inbounds %struct.worker, %struct.worker* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @worker_init(%struct.worker* %11, %struct.TYPE_3__* %16, i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = call i32 @fatal_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %1
  %31 = load %struct.worker*, %struct.worker** %3, align 8
  %32 = call i32 @worker_work(%struct.worker* %31)
  ret i8* null
}

declare dso_local i32 @log_thread_set(i32*) #1

declare dso_local i32 @ub_thread_blocksigs(...) #1

declare dso_local i32 @worker_init(%struct.worker*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @worker_work(%struct.worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

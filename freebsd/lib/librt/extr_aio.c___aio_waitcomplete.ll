; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___aio_waitcomplete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___aio_waitcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timespec = type { i32 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@SI_ASYNCIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__aio_waitcomplete(%struct.aiocb** %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.aiocb**, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aiocb** %0, %struct.aiocb*** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = load %struct.aiocb**, %struct.aiocb*** %3, align 8
  %8 = load %struct.timespec*, %struct.timespec** %4, align 8
  %9 = call i32 @__sys_aio_waitcomplete(%struct.aiocb** %7, %struct.timespec* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.aiocb**, %struct.aiocb*** %3, align 8
  %11 = load %struct.aiocb*, %struct.aiocb** %10, align 8
  %12 = icmp ne %struct.aiocb* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.aiocb**, %struct.aiocb*** %3, align 8
  %15 = load %struct.aiocb*, %struct.aiocb** %14, align 8
  %16 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SIGEV_THREAD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %6, align 4
  %23 = call i32 (...) @__sigev_list_lock()
  %24 = load i32, i32* @SI_ASYNCIO, align 4
  %25 = load %struct.aiocb**, %struct.aiocb*** %3, align 8
  %26 = load %struct.aiocb*, %struct.aiocb** %25, align 8
  %27 = ptrtoint %struct.aiocb* %26 to i32
  %28 = call i32 @__sigev_delete(i32 %24, i32 %27)
  %29 = call i32 (...) @__sigev_list_unlock()
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* @errno, align 4
  br label %31

31:                                               ; preds = %21, %13
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @__sys_aio_waitcomplete(%struct.aiocb**, %struct.timespec*) #1

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_delete(i32, i32) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

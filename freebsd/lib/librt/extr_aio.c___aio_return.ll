; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___aio_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_aio.c___aio_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SI_ASYNCIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__aio_return(%struct.aiocb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aiocb*, align 8
  store %struct.aiocb* %0, %struct.aiocb** %3, align 8
  %4 = load %struct.aiocb*, %struct.aiocb** %3, align 8
  %5 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SIGEV_THREAD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.aiocb*, %struct.aiocb** %3, align 8
  %12 = call i64 @__sys_aio_error(%struct.aiocb* %11)
  %13 = load i64, i64* @EINPROGRESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %27

17:                                               ; preds = %10
  %18 = call i32 (...) @__sigev_list_lock()
  %19 = load i32, i32* @SI_ASYNCIO, align 4
  %20 = load %struct.aiocb*, %struct.aiocb** %3, align 8
  %21 = ptrtoint %struct.aiocb* %20 to i32
  %22 = call i32 @__sigev_delete(i32 %19, i32 %21)
  %23 = call i32 (...) @__sigev_list_unlock()
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.aiocb*, %struct.aiocb** %3, align 8
  %26 = call i32 @__sys_aio_return(%struct.aiocb* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @__sys_aio_error(%struct.aiocb*) #1

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_delete(i32, i32) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

declare dso_local i32 @__sys_aio_return(%struct.aiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

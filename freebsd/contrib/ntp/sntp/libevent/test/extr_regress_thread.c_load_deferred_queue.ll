; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_thread.c_load_deferred_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_thread.c_load_deferred_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deferred_test_data = type { i32*, i32 }

@CB_COUNT = common dso_local global i64 0, align 8
@deferred_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @load_deferred_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_deferred_queue(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.deferred_test_data*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.deferred_test_data*
  store %struct.deferred_test_data* %7, %struct.deferred_test_data** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CB_COUNT, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.deferred_test_data*, %struct.deferred_test_data** %4, align 8
  %14 = getelementptr inbounds %struct.deferred_test_data, %struct.deferred_test_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* @deferred_callback, align 4
  %19 = call i32 @event_deferred_cb_init_(i32* %17, i32 0, i32 %18, i32* null)
  %20 = load %struct.deferred_test_data*, %struct.deferred_test_data** %4, align 8
  %21 = getelementptr inbounds %struct.deferred_test_data, %struct.deferred_test_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.deferred_test_data*, %struct.deferred_test_data** %4, align 8
  %24 = getelementptr inbounds %struct.deferred_test_data, %struct.deferred_test_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @event_deferred_cb_schedule_(i32 %22, i32* %27)
  %29 = call i32 @SLEEP_MS(i32 1)
  br label %30

30:                                               ; preds = %12
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %8

33:                                               ; preds = %8
  %34 = call i32 (...) @THREAD_RETURN()
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @event_deferred_cb_init_(i32*, i32, i32, i32*) #1

declare dso_local i32 @event_deferred_cb_schedule_(i32, i32*) #1

declare dso_local i32 @SLEEP_MS(i32) #1

declare dso_local i32 @THREAD_RETURN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

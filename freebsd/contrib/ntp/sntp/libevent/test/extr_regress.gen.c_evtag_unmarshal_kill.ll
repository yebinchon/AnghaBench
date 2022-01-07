; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_evtag_unmarshal_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_evtag_unmarshal_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.kill = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evtag_unmarshal_kill(%struct.evbuffer* %0, i64 %1, %struct.kill* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kill*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.evbuffer*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.kill* %2, %struct.kill** %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %10, %struct.evbuffer** %9, align 8
  %11 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %13 = call i32 @evtag_unmarshal(%struct.evbuffer* %11, i64* %7, %struct.evbuffer* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  br label %27

20:                                               ; preds = %15
  %21 = load %struct.kill*, %struct.kill** %6, align 8
  %22 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %23 = call i32 @kill_unmarshal(%struct.kill* %21, %struct.evbuffer* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %25, %19
  %28 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %29 = call i32 @evbuffer_free(%struct.evbuffer* %28)
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evtag_unmarshal(%struct.evbuffer*, i64*, %struct.evbuffer*) #1

declare dso_local i32 @kill_unmarshal(%struct.kill*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

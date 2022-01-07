; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_settimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_settimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_settimeout(%struct.bufferevent* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca %struct.timeval*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.timeval* null, %struct.timeval** %9, align 8
  store %struct.timeval* null, %struct.timeval** %10, align 8
  %11 = call i32 @memset(%struct.timeval* %7, i32 0, i32 4)
  %12 = call i32 @memset(%struct.timeval* %8, i32 0, i32 4)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  store %struct.timeval* %7, %struct.timeval** %9, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  store %struct.timeval* %8, %struct.timeval** %10, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %26 = load %struct.timeval*, %struct.timeval** %9, align 8
  %27 = load %struct.timeval*, %struct.timeval** %10, align 8
  %28 = call i32 @bufferevent_set_timeouts(%struct.bufferevent* %25, %struct.timeval* %26, %struct.timeval* %27)
  ret void
}

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i32 @bufferevent_set_timeouts(%struct.bufferevent*, %struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event*, i32)* @bufferevent_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bufferevent_add(%struct.event* %0, i32 %1) #0 {
  %3 = alloca %struct.event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval*, align 8
  store %struct.event* %0, %struct.event** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.timeval* null, %struct.timeval** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32 @timerclear(%struct.timeval* %5)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store %struct.timeval* %5, %struct.timeval** %6, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.event*, %struct.event** %3, align 8
  %15 = load %struct.timeval*, %struct.timeval** %6, align 8
  %16 = call i32 @event_add(%struct.event* %14, %struct.timeval* %15)
  ret i32 %16
}

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32 @event_add(%struct.event*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

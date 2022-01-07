; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { %struct.event_base* }
%struct.event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evhttp* @evhttp_new(%struct.event_base* %0) #0 {
  %2 = alloca %struct.evhttp*, align 8
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.evhttp*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.evhttp* null, %struct.evhttp** %4, align 8
  %5 = call %struct.evhttp* (...) @evhttp_new_object()
  store %struct.evhttp* %5, %struct.evhttp** %4, align 8
  %6 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %7 = icmp eq %struct.evhttp* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.evhttp* null, %struct.evhttp** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.event_base*, %struct.event_base** %3, align 8
  %11 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %12 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %11, i32 0, i32 0
  store %struct.event_base* %10, %struct.event_base** %12, align 8
  %13 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  store %struct.evhttp* %13, %struct.evhttp** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.evhttp*, %struct.evhttp** %2, align 8
  ret %struct.evhttp* %15
}

declare dso_local %struct.evhttp* @evhttp_new_object(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

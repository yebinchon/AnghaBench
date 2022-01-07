; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_evtag_marshal_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_evtag_marshal_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.run = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evtag_marshal_run(%struct.evbuffer* %0, i32 %1, %struct.run* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.run*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.run* %2, %struct.run** %6, align 8
  %8 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %8, %struct.evbuffer** %7, align 8
  %9 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %10 = icmp ne %struct.evbuffer* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %14 = load %struct.run*, %struct.run** %6, align 8
  %15 = call i32 @run_marshal(%struct.evbuffer* %13, %struct.run* %14)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %19 = call i32 @evtag_marshal_buffer(%struct.evbuffer* %16, i32 %17, %struct.evbuffer* %18)
  %20 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %21 = call i32 @evbuffer_free(%struct.evbuffer* %20)
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @run_marshal(%struct.evbuffer*, %struct.run*) #1

declare dso_local i32 @evtag_marshal_buffer(%struct.evbuffer*, i32, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

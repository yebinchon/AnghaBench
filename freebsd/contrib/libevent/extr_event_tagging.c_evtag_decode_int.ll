; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_evtag_decode_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_evtag_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evtag_decode_int(i32* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %8 = call i32 @decode_int_internal(i32* %6, %struct.evbuffer* %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @evbuffer_drain(%struct.evbuffer* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 -1, i32 0
  ret i32 %19
}

declare dso_local i32 @decode_int_internal(i32*, %struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

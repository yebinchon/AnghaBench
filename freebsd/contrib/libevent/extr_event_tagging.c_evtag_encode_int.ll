; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_evtag_encode_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_evtag_encode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evtag_encode_int(%struct.evbuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @encode_int_internal(i32* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @evbuffer_add(%struct.evbuffer* %10, i32* %11, i32 %12)
  ret void
}

declare dso_local i32 @encode_int_internal(i32*, i32) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

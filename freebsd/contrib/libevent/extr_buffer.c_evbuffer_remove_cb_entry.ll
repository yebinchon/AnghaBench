; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_remove_cb_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_remove_cb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_entry = type { i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_remove_cb_entry(%struct.evbuffer* %0, %struct.evbuffer_cb_entry* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer_cb_entry*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.evbuffer_cb_entry* %1, %struct.evbuffer_cb_entry** %4, align 8
  %5 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %6 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %5)
  %7 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %4, align 8
  %8 = load i32, i32* @next, align 4
  %9 = call i32 @LIST_REMOVE(%struct.evbuffer_cb_entry* %7, i32 %8)
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %10)
  %12 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %4, align 8
  %13 = call i32 @mm_free(%struct.evbuffer_cb_entry* %12)
  ret i32 0
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @LIST_REMOVE(%struct.evbuffer_cb_entry*, i32) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

declare dso_local i32 @mm_free(%struct.evbuffer_cb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

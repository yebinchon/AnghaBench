; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_standalone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_standalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32 }
%struct.pt_event_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_event* @pt_evq_standalone(%struct.pt_event_queue* %0) #0 {
  %2 = alloca %struct.pt_event*, align 8
  %3 = alloca %struct.pt_event_queue*, align 8
  store %struct.pt_event_queue* %0, %struct.pt_event_queue** %3, align 8
  %4 = load %struct.pt_event_queue*, %struct.pt_event_queue** %3, align 8
  %5 = icmp ne %struct.pt_event_queue* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.pt_event* null, %struct.pt_event** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.pt_event_queue*, %struct.pt_event_queue** %3, align 8
  %9 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %8, i32 0, i32 0
  %10 = call %struct.pt_event* @pt_event_init(i32* %9)
  store %struct.pt_event* %10, %struct.pt_event** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.pt_event*, %struct.pt_event** %2, align 8
  ret %struct.pt_event* %12
}

declare dso_local %struct.pt_event* @pt_event_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_create_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { i32 }
%struct.ub_ctx = type { i32 }
%struct.ub_event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libworker* @libworker_create_event(%struct.ub_ctx* %0, %struct.ub_event_base* %1) #0 {
  %3 = alloca %struct.ub_ctx*, align 8
  %4 = alloca %struct.ub_event_base*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %3, align 8
  store %struct.ub_event_base* %1, %struct.ub_event_base** %4, align 8
  %5 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %6 = load %struct.ub_event_base*, %struct.ub_event_base** %4, align 8
  %7 = call %struct.libworker* @libworker_setup(%struct.ub_ctx* %5, i32 0, %struct.ub_event_base* %6)
  ret %struct.libworker* %7
}

declare dso_local %struct.libworker* @libworker_setup(%struct.ub_ctx*, i32, %struct.ub_event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

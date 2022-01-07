; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cancel.c__Tthr_testcancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cancel.c__Tthr_testcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Tthr_testcancel() #0 {
  %1 = alloca %struct.pthread*, align 8
  %2 = call i32 (...) @_thr_check_init()
  %3 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %3, %struct.pthread** %1, align 8
  %4 = load %struct.pthread*, %struct.pthread** %1, align 8
  %5 = call i32 @testcancel(%struct.pthread* %4)
  ret void
}

declare dso_local i32 @_thr_check_init(...) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @testcancel(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

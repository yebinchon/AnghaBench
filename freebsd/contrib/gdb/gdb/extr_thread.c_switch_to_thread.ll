; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_switch_to_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_switch_to_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@stop_pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @switch_to_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_to_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @inferior_ptid, align 4
  %5 = call i64 @ptid_equal(i32 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* @inferior_ptid, align 4
  %10 = call i32 (...) @flush_cached_frames()
  %11 = call i32 (...) @registers_changed()
  %12 = call i32 (...) @read_pc()
  store i32 %12, i32* @stop_pc, align 4
  %13 = call i32 (...) @get_current_frame()
  %14 = call i32 @select_frame(i32 %13)
  br label %15

15:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @ptid_equal(i32, i32) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @select_frame(i32) #1

declare dso_local i32 @get_current_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

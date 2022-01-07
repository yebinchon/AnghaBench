; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_child_mourn_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_child_mourn_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_CONTINUE = common dso_local global i32 0, align 4
@child_ops = common dso_local global i32 0, align 4
@connection_initialized = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @child_mourn_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_mourn_inferior() #0 {
  %1 = load i32, i32* @DBG_CONTINUE, align 4
  %2 = call i32 @child_continue(i32 %1, i32 -1)
  %3 = call i32 @unpush_target(i32* @child_ops)
  %4 = call i32 (...) @stop_stub()
  %5 = call i32 (...) @CeRapiUninit()
  store i64 0, i64* @connection_initialized, align 8
  %6 = call i32 (...) @generic_mourn_inferior()
  ret void
}

declare dso_local i32 @child_continue(i32, i32) #1

declare dso_local i32 @unpush_target(i32*) #1

declare dso_local i32 @stop_stub(...) #1

declare dso_local i32 @CeRapiUninit(...) #1

declare dso_local i32 @generic_mourn_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

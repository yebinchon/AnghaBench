; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_get_current_exception_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_get_current_exception_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.exception_event_record* (...)* }
%struct.exception_event_record = type { i32 }

@debug_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"target get_current_exception_event ()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exception_event_record* ()* @debug_to_get_current_exception_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exception_event_record* @debug_to_get_current_exception_event() #0 {
  %1 = alloca %struct.exception_event_record*, align 8
  %2 = load %struct.exception_event_record* (...)*, %struct.exception_event_record* (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @debug_target, i32 0, i32 0), align 8
  %3 = call %struct.exception_event_record* (...) %2()
  store %struct.exception_event_record* %3, %struct.exception_event_record** %1, align 8
  %4 = load i32, i32* @gdb_stdlog, align 4
  %5 = call i32 @fprintf_unfiltered(i32 %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.exception_event_record*, %struct.exception_event_record** %1, align 8
  ret %struct.exception_event_record* %6
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

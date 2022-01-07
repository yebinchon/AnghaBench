; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_add_continuation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_add_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuation = type { void (%struct.continuation_arg*)*, %struct.continuation*, %struct.continuation_arg* }
%struct.continuation_arg = type { i32 }

@cmd_continuation = common dso_local global %struct.continuation* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_continuation(void (%struct.continuation_arg*)* %0, %struct.continuation_arg* %1) #0 {
  %3 = alloca void (%struct.continuation_arg*)*, align 8
  %4 = alloca %struct.continuation_arg*, align 8
  %5 = alloca %struct.continuation*, align 8
  store void (%struct.continuation_arg*)* %0, void (%struct.continuation_arg*)** %3, align 8
  store %struct.continuation_arg* %1, %struct.continuation_arg** %4, align 8
  %6 = call i64 @xmalloc(i32 24)
  %7 = inttoptr i64 %6 to %struct.continuation*
  store %struct.continuation* %7, %struct.continuation** %5, align 8
  %8 = load void (%struct.continuation_arg*)*, void (%struct.continuation_arg*)** %3, align 8
  %9 = load %struct.continuation*, %struct.continuation** %5, align 8
  %10 = getelementptr inbounds %struct.continuation, %struct.continuation* %9, i32 0, i32 0
  store void (%struct.continuation_arg*)* %8, void (%struct.continuation_arg*)** %10, align 8
  %11 = load %struct.continuation_arg*, %struct.continuation_arg** %4, align 8
  %12 = load %struct.continuation*, %struct.continuation** %5, align 8
  %13 = getelementptr inbounds %struct.continuation, %struct.continuation* %12, i32 0, i32 2
  store %struct.continuation_arg* %11, %struct.continuation_arg** %13, align 8
  %14 = load %struct.continuation*, %struct.continuation** @cmd_continuation, align 8
  %15 = load %struct.continuation*, %struct.continuation** %5, align 8
  %16 = getelementptr inbounds %struct.continuation, %struct.continuation* %15, i32 0, i32 1
  store %struct.continuation* %14, %struct.continuation** %16, align 8
  %17 = load %struct.continuation*, %struct.continuation** %5, align 8
  store %struct.continuation* %17, %struct.continuation** @cmd_continuation, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

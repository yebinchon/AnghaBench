; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_free_actions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_free_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { %struct.action_line* }
%struct.action_line = type { %struct.action_line*, %struct.action_line* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_actions(%struct.tracepoint* %0) #0 {
  %2 = alloca %struct.tracepoint*, align 8
  %3 = alloca %struct.action_line*, align 8
  %4 = alloca %struct.action_line*, align 8
  store %struct.tracepoint* %0, %struct.tracepoint** %2, align 8
  %5 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %6 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %5, i32 0, i32 0
  %7 = load %struct.action_line*, %struct.action_line** %6, align 8
  store %struct.action_line* %7, %struct.action_line** %3, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.action_line*, %struct.action_line** %3, align 8
  %10 = icmp ne %struct.action_line* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.action_line*, %struct.action_line** %3, align 8
  %13 = getelementptr inbounds %struct.action_line, %struct.action_line* %12, i32 0, i32 1
  %14 = load %struct.action_line*, %struct.action_line** %13, align 8
  store %struct.action_line* %14, %struct.action_line** %4, align 8
  %15 = load %struct.action_line*, %struct.action_line** %3, align 8
  %16 = getelementptr inbounds %struct.action_line, %struct.action_line* %15, i32 0, i32 0
  %17 = load %struct.action_line*, %struct.action_line** %16, align 8
  %18 = icmp ne %struct.action_line* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.action_line*, %struct.action_line** %3, align 8
  %21 = getelementptr inbounds %struct.action_line, %struct.action_line* %20, i32 0, i32 0
  %22 = load %struct.action_line*, %struct.action_line** %21, align 8
  %23 = call i32 @xfree(%struct.action_line* %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.action_line*, %struct.action_line** %3, align 8
  %26 = call i32 @xfree(%struct.action_line* %25)
  br label %27

27:                                               ; preds = %24
  %28 = load %struct.action_line*, %struct.action_line** %4, align 8
  store %struct.action_line* %28, %struct.action_line** %3, align 8
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %31 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %30, i32 0, i32 0
  store %struct.action_line* null, %struct.action_line** %31, align 8
  ret void
}

declare dso_local i32 @xfree(%struct.action_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

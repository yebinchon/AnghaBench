; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_create_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_base = type { %struct.internal_base* }
%struct.internal_base = type { %struct.ub_event_base* }
%struct.ub_event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_base* @comm_base_create_event(%struct.ub_event_base* %0) #0 {
  %2 = alloca %struct.comm_base*, align 8
  %3 = alloca %struct.ub_event_base*, align 8
  %4 = alloca %struct.comm_base*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %3, align 8
  %5 = call i64 @calloc(i32 1, i32 8)
  %6 = inttoptr i64 %5 to %struct.comm_base*
  store %struct.comm_base* %6, %struct.comm_base** %4, align 8
  %7 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %8 = icmp ne %struct.comm_base* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.comm_base* null, %struct.comm_base** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = call i64 @calloc(i32 1, i32 8)
  %12 = inttoptr i64 %11 to %struct.internal_base*
  %13 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %14 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %13, i32 0, i32 0
  store %struct.internal_base* %12, %struct.internal_base** %14, align 8
  %15 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %16 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %15, i32 0, i32 0
  %17 = load %struct.internal_base*, %struct.internal_base** %16, align 8
  %18 = icmp ne %struct.internal_base* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %21 = call i32 @free(%struct.comm_base* %20)
  store %struct.comm_base* null, %struct.comm_base** %2, align 8
  br label %31

22:                                               ; preds = %10
  %23 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %24 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %25 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %24, i32 0, i32 0
  %26 = load %struct.internal_base*, %struct.internal_base** %25, align 8
  %27 = getelementptr inbounds %struct.internal_base, %struct.internal_base* %26, i32 0, i32 0
  store %struct.ub_event_base* %23, %struct.ub_event_base** %27, align 8
  %28 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %29 = call i32 @ub_comm_base_now(%struct.comm_base* %28)
  %30 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  store %struct.comm_base* %30, %struct.comm_base** %2, align 8
  br label %31

31:                                               ; preds = %22, %19, %9
  %32 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  ret %struct.comm_base* %32
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.comm_base*) #1

declare dso_local i32 @ub_comm_base_now(%struct.comm_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

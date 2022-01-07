; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_libevent_event_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_libevent_event_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event_base = type { i32*, i32 }
%struct.event_base = type { i32 }
%struct.my_event_base = type { %struct.ub_event_base, %struct.event_base* }

@UB_EVENT_MAGIC = common dso_local global i32 0, align 4
@default_event_base_vmt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_event_base* @ub_libevent_event_base(%struct.event_base* %0) #0 {
  %2 = alloca %struct.ub_event_base*, align 8
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.my_event_base*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  %5 = call i64 @calloc(i32 1, i32 24)
  %6 = inttoptr i64 %5 to %struct.my_event_base*
  store %struct.my_event_base* %6, %struct.my_event_base** %4, align 8
  %7 = load %struct.my_event_base*, %struct.my_event_base** %4, align 8
  %8 = icmp ne %struct.my_event_base* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ub_event_base* null, %struct.ub_event_base** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = load i32, i32* @UB_EVENT_MAGIC, align 4
  %12 = load %struct.my_event_base*, %struct.my_event_base** %4, align 8
  %13 = getelementptr inbounds %struct.my_event_base, %struct.my_event_base* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ub_event_base, %struct.ub_event_base* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.my_event_base*, %struct.my_event_base** %4, align 8
  %16 = getelementptr inbounds %struct.my_event_base, %struct.my_event_base* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.ub_event_base, %struct.ub_event_base* %16, i32 0, i32 0
  store i32* @default_event_base_vmt, i32** %17, align 8
  %18 = load %struct.event_base*, %struct.event_base** %3, align 8
  %19 = load %struct.my_event_base*, %struct.my_event_base** %4, align 8
  %20 = getelementptr inbounds %struct.my_event_base, %struct.my_event_base* %19, i32 0, i32 1
  store %struct.event_base* %18, %struct.event_base** %20, align 8
  %21 = load %struct.my_event_base*, %struct.my_event_base** %4, align 8
  %22 = getelementptr inbounds %struct.my_event_base, %struct.my_event_base* %21, i32 0, i32 0
  store %struct.ub_event_base* %22, %struct.ub_event_base** %2, align 8
  br label %23

23:                                               ; preds = %10, %9
  %24 = load %struct.ub_event_base*, %struct.ub_event_base** %2, align 8
  ret %struct.ub_event_base* %24
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

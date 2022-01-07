; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_state_list_remove_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_state_list_remove_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_state = type { %struct.rc_state*, %struct.comm_point* }
%struct.comm_point = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_state**, %struct.comm_point*)* @state_list_remove_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_list_remove_elem(%struct.rc_state** %0, %struct.comm_point* %1) #0 {
  %3 = alloca %struct.rc_state**, align 8
  %4 = alloca %struct.comm_point*, align 8
  store %struct.rc_state** %0, %struct.rc_state*** %3, align 8
  store %struct.comm_point* %1, %struct.comm_point** %4, align 8
  br label %5

5:                                                ; preds = %22, %2
  %6 = load %struct.rc_state**, %struct.rc_state*** %3, align 8
  %7 = load %struct.rc_state*, %struct.rc_state** %6, align 8
  %8 = icmp ne %struct.rc_state* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.rc_state**, %struct.rc_state*** %3, align 8
  %11 = load %struct.rc_state*, %struct.rc_state** %10, align 8
  %12 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %11, i32 0, i32 1
  %13 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %14 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %15 = icmp eq %struct.comm_point* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.rc_state**, %struct.rc_state*** %3, align 8
  %18 = load %struct.rc_state*, %struct.rc_state** %17, align 8
  %19 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %18, i32 0, i32 0
  %20 = load %struct.rc_state*, %struct.rc_state** %19, align 8
  %21 = load %struct.rc_state**, %struct.rc_state*** %3, align 8
  store %struct.rc_state* %20, %struct.rc_state** %21, align 8
  br label %26

22:                                               ; preds = %9
  %23 = load %struct.rc_state**, %struct.rc_state*** %3, align 8
  %24 = load %struct.rc_state*, %struct.rc_state** %23, align 8
  %25 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %24, i32 0, i32 0
  store %struct.rc_state** %25, %struct.rc_state*** %3, align 8
  br label %5

26:                                               ; preds = %16, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

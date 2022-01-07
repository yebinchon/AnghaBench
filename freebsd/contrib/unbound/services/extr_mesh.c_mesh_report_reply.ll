; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_report_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_report_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_area = type { i32 }
%struct.outbound_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comm_reply* }
%struct.comm_reply = type { i32 }

@module_event_reply = common dso_local global i32 0, align 4
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@module_event_noreply = common dso_local global i32 0, align 4
@NETEVENT_CAPSFAIL = common dso_local global i32 0, align 4
@module_event_capsfail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_report_reply(%struct.mesh_area* %0, %struct.outbound_entry* %1, %struct.comm_reply* %2, i32 %3) #0 {
  %5 = alloca %struct.mesh_area*, align 8
  %6 = alloca %struct.outbound_entry*, align 8
  %7 = alloca %struct.comm_reply*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mesh_area* %0, %struct.mesh_area** %5, align 8
  store %struct.outbound_entry* %1, %struct.outbound_entry** %6, align 8
  store %struct.comm_reply* %2, %struct.comm_reply** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @module_event_reply, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.comm_reply*, %struct.comm_reply** %7, align 8
  %12 = load %struct.outbound_entry*, %struct.outbound_entry** %6, align 8
  %13 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.comm_reply* %11, %struct.comm_reply** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @NETEVENT_NOERROR, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* @module_event_noreply, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NETEVENT_CAPSFAIL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @module_event_capsfail, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %4
  %28 = load %struct.mesh_area*, %struct.mesh_area** %5, align 8
  %29 = load %struct.outbound_entry*, %struct.outbound_entry** %6, align 8
  %30 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.outbound_entry*, %struct.outbound_entry** %6, align 8
  %36 = call i32 @mesh_run(%struct.mesh_area* %28, i32 %33, i32 %34, %struct.outbound_entry* %35)
  ret void
}

declare dso_local i32 @mesh_run(%struct.mesh_area*, i32, i32, %struct.outbound_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

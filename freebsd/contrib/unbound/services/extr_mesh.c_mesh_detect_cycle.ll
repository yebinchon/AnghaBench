; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_detect_cycle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_detect_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mesh_area* }
%struct.mesh_area = type { i32 }
%struct.query_info = type { i32 }
%struct.mesh_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_detect_cycle(%struct.module_qstate* %0, %struct.query_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.query_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mesh_area*, align 8
  %12 = alloca %struct.mesh_state*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.query_info* %1, %struct.query_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %14 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mesh_area*, %struct.mesh_area** %16, align 8
  store %struct.mesh_area* %17, %struct.mesh_area** %11, align 8
  store %struct.mesh_state* null, %struct.mesh_state** %12, align 8
  %18 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %19 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mesh_state_is_unique(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load %struct.mesh_area*, %struct.mesh_area** %11, align 8
  %25 = load %struct.query_info*, %struct.query_info** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.mesh_state* @mesh_area_find(%struct.mesh_area* %24, i32* null, %struct.query_info* %25, i32 %26, i32 %27, i32 %28)
  store %struct.mesh_state* %29, %struct.mesh_state** %12, align 8
  br label %30

30:                                               ; preds = %23, %5
  %31 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %32 = load %struct.mesh_state*, %struct.mesh_state** %12, align 8
  %33 = call i32 @mesh_detect_cycle_found(%struct.module_qstate* %31, %struct.mesh_state* %32)
  ret i32 %33
}

declare dso_local i32 @mesh_state_is_unique(i32) #1

declare dso_local %struct.mesh_state* @mesh_area_find(%struct.mesh_area*, i32*, %struct.query_info*, i32, i32, i32) #1

declare dso_local i32 @mesh_detect_cycle_found(%struct.module_qstate*, %struct.mesh_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

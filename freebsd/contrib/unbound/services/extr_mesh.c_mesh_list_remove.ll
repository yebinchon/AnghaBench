; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_list_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { %struct.mesh_state*, %struct.mesh_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_list_remove(%struct.mesh_state* %0, %struct.mesh_state** %1, %struct.mesh_state** %2) #0 {
  %4 = alloca %struct.mesh_state*, align 8
  %5 = alloca %struct.mesh_state**, align 8
  %6 = alloca %struct.mesh_state**, align 8
  store %struct.mesh_state* %0, %struct.mesh_state** %4, align 8
  store %struct.mesh_state** %1, %struct.mesh_state*** %5, align 8
  store %struct.mesh_state** %2, %struct.mesh_state*** %6, align 8
  %7 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %8 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %7, i32 0, i32 0
  %9 = load %struct.mesh_state*, %struct.mesh_state** %8, align 8
  %10 = icmp ne %struct.mesh_state* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %13 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %12, i32 0, i32 1
  %14 = load %struct.mesh_state*, %struct.mesh_state** %13, align 8
  %15 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %16 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %15, i32 0, i32 0
  %17 = load %struct.mesh_state*, %struct.mesh_state** %16, align 8
  %18 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %17, i32 0, i32 1
  store %struct.mesh_state* %14, %struct.mesh_state** %18, align 8
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %21 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %20, i32 0, i32 1
  %22 = load %struct.mesh_state*, %struct.mesh_state** %21, align 8
  %23 = load %struct.mesh_state**, %struct.mesh_state*** %6, align 8
  store %struct.mesh_state* %22, %struct.mesh_state** %23, align 8
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %26 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %25, i32 0, i32 1
  %27 = load %struct.mesh_state*, %struct.mesh_state** %26, align 8
  %28 = icmp ne %struct.mesh_state* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %31 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %30, i32 0, i32 0
  %32 = load %struct.mesh_state*, %struct.mesh_state** %31, align 8
  %33 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %34 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %33, i32 0, i32 1
  %35 = load %struct.mesh_state*, %struct.mesh_state** %34, align 8
  %36 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %35, i32 0, i32 0
  store %struct.mesh_state* %32, %struct.mesh_state** %36, align 8
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %39 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %38, i32 0, i32 0
  %40 = load %struct.mesh_state*, %struct.mesh_state** %39, align 8
  %41 = load %struct.mesh_state**, %struct.mesh_state*** %5, align 8
  store %struct.mesh_state* %40, %struct.mesh_state** %41, align 8
  br label %42

42:                                               ; preds = %37, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

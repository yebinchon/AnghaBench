; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_attach_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_attach_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mesh_area* }
%struct.mesh_area = type { i64 }
%struct.query_info = type { i32 }
%struct.mesh_state = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_attach_sub(%struct.module_qstate* %0, %struct.query_info* %1, i32 %2, i32 %3, i32 %4, %struct.module_qstate** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.module_qstate**, align 8
  %14 = alloca %struct.mesh_area*, align 8
  %15 = alloca %struct.mesh_state*, align 8
  %16 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %8, align 8
  store %struct.query_info* %1, %struct.query_info** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.module_qstate** %5, %struct.module_qstate*** %13, align 8
  %17 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %18 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.mesh_area*, %struct.mesh_area** %20, align 8
  store %struct.mesh_area* %21, %struct.mesh_area** %14, align 8
  store %struct.mesh_state* null, %struct.mesh_state** %15, align 8
  %22 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %23 = load %struct.query_info*, %struct.query_info** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.module_qstate**, %struct.module_qstate*** %13, align 8
  %28 = call i32 @mesh_add_sub(%struct.module_qstate* %22, %struct.query_info* %23, i32 %24, i32 %25, i32 %26, %struct.module_qstate** %27, %struct.mesh_state** %15)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %76

31:                                               ; preds = %6
  %32 = load %struct.mesh_state*, %struct.mesh_state** %15, align 8
  %33 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %39 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mesh_state*, %struct.mesh_state** %15, align 8
  %42 = call i32 @mesh_state_attachment(i32 %40, %struct.mesh_state* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %76

45:                                               ; preds = %31
  %46 = load %struct.mesh_state*, %struct.mesh_state** %15, align 8
  %47 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %45
  %51 = load %struct.mesh_state*, %struct.mesh_state** %15, align 8
  %52 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.mesh_state*, %struct.mesh_state** %15, align 8
  %60 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.mesh_area*, %struct.mesh_area** %14, align 8
  %66 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @log_assert(i32 %69)
  %71 = load %struct.mesh_area*, %struct.mesh_area** %14, align 8
  %72 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %64, %58, %55, %50, %45
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %44, %30
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @mesh_add_sub(%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**, %struct.mesh_state**) #1

declare dso_local i32 @mesh_state_attachment(i32, %struct.mesh_state*) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

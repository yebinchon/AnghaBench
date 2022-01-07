; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_area = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_delete(%struct.mesh_area* %0) #0 {
  %2 = alloca %struct.mesh_area*, align 8
  store %struct.mesh_area* %0, %struct.mesh_area** %2, align 8
  %3 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %4 = icmp ne %struct.mesh_area* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %13, %6
  %8 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %9 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %15 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mesh_delete_helper(i32 %17)
  br label %7

19:                                               ; preds = %7
  %20 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %21 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @timehist_delete(i32 %22)
  %24 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %25 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sldns_buffer_free(i32 %26)
  %28 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %29 = call i32 @free(%struct.mesh_area* %28)
  br label %30

30:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @mesh_delete_helper(i32) #1

declare dso_local i32 @timehist_delete(i32) #1

declare dso_local i32 @sldns_buffer_free(i32) #1

declare dso_local i32 @free(%struct.mesh_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

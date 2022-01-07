; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_delete_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_delete_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_area = type { i32*, i32*, i32*, i32*, i64, i64, i64, i64, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@mesh_state_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_delete_all(%struct.mesh_area* %0) #0 {
  %2 = alloca %struct.mesh_area*, align 8
  store %struct.mesh_area* %0, %struct.mesh_area** %2, align 8
  br label %3

3:                                                ; preds = %9, %1
  %4 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %5 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %4, i32 0, i32 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %11 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mesh_delete_helper(i32 %13)
  br label %3

15:                                               ; preds = %3
  %16 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %17 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %20 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 8
  %25 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %26 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %25, i32 0, i32 9
  %27 = call i32 @rbtree_init(%struct.TYPE_2__* %26, i32* @mesh_state_compare)
  %28 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %29 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %28, i32 0, i32 8
  %30 = call i32 @rbtree_init(%struct.TYPE_2__* %29, i32* @mesh_state_compare)
  %31 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %32 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %34 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %36 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %38 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %40 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %42 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %44 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.mesh_area*, %struct.mesh_area** %2, align 8
  %46 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  ret void
}

declare dso_local i32 @mesh_delete_helper(i32) #1

declare dso_local i32 @rbtree_init(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_area_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_area_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { %struct.TYPE_3__, i32*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, %struct.respip_client_info*, i32, %struct.query_info }
%struct.query_info = type { i32 }
%struct.TYPE_4__ = type { %struct.mesh_state* }
%struct.mesh_area = type { i32 }
%struct.respip_client_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mesh_state* @mesh_area_find(%struct.mesh_area* %0, %struct.respip_client_info* %1, %struct.query_info* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mesh_area*, align 8
  %8 = alloca %struct.respip_client_info*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mesh_state, align 8
  %14 = alloca %struct.mesh_state*, align 8
  store %struct.mesh_area* %0, %struct.mesh_area** %7, align 8
  store %struct.respip_client_info* %1, %struct.respip_client_info** %8, align 8
  store %struct.query_info* %2, %struct.query_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.mesh_state* %13, %struct.mesh_state** %16, align 8
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load %struct.query_info*, %struct.query_info** %9, align 8
  %26 = bitcast %struct.query_info* %24 to i8*
  %27 = bitcast %struct.query_info* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.respip_client_info*, %struct.respip_client_info** %8, align 8
  %33 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store %struct.respip_client_info* %32, %struct.respip_client_info** %34, align 8
  %35 = load %struct.mesh_area*, %struct.mesh_area** %7, align 8
  %36 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %35, i32 0, i32 0
  %37 = call i64 @rbtree_search(i32* %36, %struct.mesh_state* %13)
  %38 = inttoptr i64 %37 to %struct.mesh_state*
  store %struct.mesh_state* %38, %struct.mesh_state** %14, align 8
  %39 = load %struct.mesh_state*, %struct.mesh_state** %14, align 8
  ret %struct.mesh_state* %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rbtree_search(i32*, %struct.mesh_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

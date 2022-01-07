; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_add_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { %struct.mesh_cb*, %struct.TYPE_2__ }
%struct.mesh_cb = type { %struct.mesh_cb*, i8*, i8*, %struct.edns_data, i8*, i32, i32* }
%struct.edns_data = type { i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_state_add_cb(%struct.mesh_state* %0, %struct.edns_data* %1, i32* %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mesh_state*, align 8
  %10 = alloca %struct.edns_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.mesh_cb*, align 8
  store %struct.mesh_state* %0, %struct.mesh_state** %9, align 8
  store %struct.edns_data* %1, %struct.edns_data** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load %struct.mesh_state*, %struct.mesh_state** %9, align 8
  %18 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mesh_cb* @regional_alloc(i32 %20, i32 56)
  store %struct.mesh_cb* %21, %struct.mesh_cb** %16, align 8
  %22 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %23 = icmp ne %struct.mesh_cb* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %81

25:                                               ; preds = %7
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %28 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %27, i32 0, i32 6
  store i32* %26, i32** %28, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @fptr_whitelist_mesh_cb(i32 %29)
  %31 = call i32 @log_assert(i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %34 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %37 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %39 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %38, i32 0, i32 3
  %40 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %41 = bitcast %struct.edns_data* %39 to i8*
  %42 = bitcast %struct.edns_data* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %44 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %25
  %48 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %49 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.mesh_state*, %struct.mesh_state** %9, align 8
  %52 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @edns_opt_copy_region(i64 %50, i32 %54)
  %56 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %57 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %60 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %81

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %69 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %72 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.mesh_state*, %struct.mesh_state** %9, align 8
  %74 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %73, i32 0, i32 0
  %75 = load %struct.mesh_cb*, %struct.mesh_cb** %74, align 8
  %76 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %77 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %76, i32 0, i32 0
  store %struct.mesh_cb* %75, %struct.mesh_cb** %77, align 8
  %78 = load %struct.mesh_cb*, %struct.mesh_cb** %16, align 8
  %79 = load %struct.mesh_state*, %struct.mesh_state** %9, align 8
  %80 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %79, i32 0, i32 0
  store %struct.mesh_cb* %78, %struct.mesh_cb** %80, align 8
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %66, %64, %24
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local %struct.mesh_cb* @regional_alloc(i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @fptr_whitelist_mesh_cb(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @edns_opt_copy_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

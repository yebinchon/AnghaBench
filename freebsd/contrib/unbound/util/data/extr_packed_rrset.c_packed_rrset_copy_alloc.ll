; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_copy_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_copy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { %struct.packed_rrset_data*, i32 }
%struct.packed_rrset_data = type { i32 }
%struct.alloc_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_alloc(%struct.ub_packed_rrset_key* %0, %struct.alloc_cache* %1, i32 %2) #0 {
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca %struct.alloc_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.packed_rrset_data*, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %12 = call %struct.ub_packed_rrset_key* @alloc_special_obtain(%struct.alloc_cache* %11)
  store %struct.ub_packed_rrset_key* %12, %struct.ub_packed_rrset_key** %10, align 8
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %14 = icmp ne %struct.ub_packed_rrset_key* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %86

16:                                               ; preds = %3
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %21, %struct.packed_rrset_data** %8, align 8
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %30 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %29, i32 0, i32 1
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %31, i32 0, i32 1
  %33 = bitcast %struct.TYPE_3__* %30 to i8*
  %34 = bitcast %struct.TYPE_3__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %37, align 8
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @memdup(%struct.packed_rrset_data* %38, i32 %42)
  %44 = inttoptr i64 %43 to %struct.packed_rrset_data*
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.packed_rrset_data* %44, %struct.packed_rrset_data** %47, align 8
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %50, align 8
  %52 = icmp ne %struct.packed_rrset_data* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %16
  %54 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %55 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %56 = call i32 @alloc_special_release(%struct.alloc_cache* %54, %struct.ub_packed_rrset_key* %55)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %86

57:                                               ; preds = %16
  %58 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %59 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %60 = call i32 @packed_rrset_sizeof(%struct.packed_rrset_data* %59)
  %61 = call i64 @memdup(%struct.packed_rrset_data* %58, i32 %60)
  %62 = inttoptr i64 %61 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %62, %struct.packed_rrset_data** %9, align 8
  %63 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %64 = icmp ne %struct.packed_rrset_data* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %67 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %68, align 8
  %70 = call i32 @free(%struct.packed_rrset_data* %69)
  %71 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %73 = call i32 @alloc_special_release(%struct.alloc_cache* %71, %struct.ub_packed_rrset_key* %72)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %86

74:                                               ; preds = %57
  %75 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %76 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %75)
  %77 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %78 = bitcast %struct.packed_rrset_data* %77 to i8*
  %79 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %80 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @packed_rrset_ttl_add(%struct.packed_rrset_data* %82, i32 %83)
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  store %struct.ub_packed_rrset_key* %85, %struct.ub_packed_rrset_key** %4, align 8
  br label %86

86:                                               ; preds = %74, %65, %53, %15
  %87 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  ret %struct.ub_packed_rrset_key* %87
}

declare dso_local %struct.ub_packed_rrset_key* @alloc_special_obtain(%struct.alloc_cache*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @memdup(%struct.packed_rrset_data*, i32) #1

declare dso_local i32 @alloc_special_release(%struct.alloc_cache*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @packed_rrset_sizeof(%struct.packed_rrset_data*) #1

declare dso_local i32 @free(%struct.packed_rrset_data*) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #1

declare dso_local i32 @packed_rrset_ttl_add(%struct.packed_rrset_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

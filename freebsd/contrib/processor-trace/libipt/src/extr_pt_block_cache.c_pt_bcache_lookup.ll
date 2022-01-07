; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_cache.c_pt_bcache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_cache.c_pt_bcache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_bcache_entry = type { i32 }
%struct.pt_block_cache = type { i64, %struct.pt_bcache_entry* }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_bcache_lookup(%struct.pt_bcache_entry* %0, %struct.pt_block_cache* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_bcache_entry*, align 8
  %6 = alloca %struct.pt_block_cache*, align 8
  %7 = alloca i64, align 8
  store %struct.pt_bcache_entry* %0, %struct.pt_bcache_entry** %5, align 8
  store %struct.pt_block_cache* %1, %struct.pt_block_cache** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.pt_bcache_entry*, %struct.pt_bcache_entry** %5, align 8
  %9 = icmp ne %struct.pt_bcache_entry* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.pt_block_cache*, %struct.pt_block_cache** %6, align 8
  %12 = icmp ne %struct.pt_block_cache* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %10
  %17 = load %struct.pt_block_cache*, %struct.pt_block_cache** %6, align 8
  %18 = getelementptr inbounds %struct.pt_block_cache, %struct.pt_block_cache* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @pte_internal, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.pt_bcache_entry*, %struct.pt_bcache_entry** %5, align 8
  %27 = load %struct.pt_block_cache*, %struct.pt_block_cache** %6, align 8
  %28 = getelementptr inbounds %struct.pt_block_cache, %struct.pt_block_cache* %27, i32 0, i32 1
  %29 = load %struct.pt_bcache_entry*, %struct.pt_bcache_entry** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %29, i64 %30
  %32 = bitcast %struct.pt_bcache_entry* %26 to i8*
  %33 = bitcast %struct.pt_bcache_entry* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %22, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

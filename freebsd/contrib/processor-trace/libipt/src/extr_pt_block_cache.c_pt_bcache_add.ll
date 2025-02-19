; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_cache.c_pt_bcache_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_cache.c_pt_bcache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_cache = type { i64, %struct.pt_bcache_entry* }
%struct.pt_bcache_entry = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_bcache_add(%struct.pt_block_cache* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_bcache_entry, align 4
  %6 = alloca %struct.pt_block_cache*, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %5, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  store %struct.pt_block_cache* %0, %struct.pt_block_cache** %6, align 8
  store i64 %1, i64* %7, align 8
  %9 = load %struct.pt_block_cache*, %struct.pt_block_cache** %6, align 8
  %10 = icmp ne %struct.pt_block_cache* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.pt_block_cache*, %struct.pt_block_cache** %6, align 8
  %16 = getelementptr inbounds %struct.pt_block_cache, %struct.pt_block_cache* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %14
  %24 = load %struct.pt_block_cache*, %struct.pt_block_cache** %6, align 8
  %25 = getelementptr inbounds %struct.pt_block_cache, %struct.pt_block_cache* %24, i32 0, i32 1
  %26 = load %struct.pt_bcache_entry*, %struct.pt_bcache_entry** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %26, i64 %27
  %29 = bitcast %struct.pt_bcache_entry* %28 to i8*
  %30 = bitcast %struct.pt_bcache_entry* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %20, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indexer = type { i64, i32, %union.idx_entry** }
%union.idx_entry = type { i32 }

@IDX_ARRAY_SIZE = common dso_local global i64 0, align 8
@IDX_ENTRY_SIZE = common dso_local global i32 0, align 4
@IDX_ENTRY_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.indexer*)* @idx_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idx_grow(%struct.indexer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.indexer*, align 8
  %4 = alloca %union.idx_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.indexer* %0, %struct.indexer** %3, align 8
  %7 = load %struct.indexer*, %struct.indexer** %3, align 8
  %8 = getelementptr inbounds %struct.indexer, %struct.indexer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IDX_ARRAY_SIZE, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %91

13:                                               ; preds = %1
  %14 = load i32, i32* @IDX_ENTRY_SIZE, align 4
  %15 = call %union.idx_entry* @calloc(i32 %14, i32 4)
  %16 = load %struct.indexer*, %struct.indexer** %3, align 8
  %17 = getelementptr inbounds %struct.indexer, %struct.indexer* %16, i32 0, i32 2
  %18 = load %union.idx_entry**, %union.idx_entry*** %17, align 8
  %19 = load %struct.indexer*, %struct.indexer** %3, align 8
  %20 = getelementptr inbounds %struct.indexer, %struct.indexer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %union.idx_entry*, %union.idx_entry** %18, i64 %21
  store %union.idx_entry* %15, %union.idx_entry** %22, align 8
  %23 = load %struct.indexer*, %struct.indexer** %3, align 8
  %24 = getelementptr inbounds %struct.indexer, %struct.indexer* %23, i32 0, i32 2
  %25 = load %union.idx_entry**, %union.idx_entry*** %24, align 8
  %26 = load %struct.indexer*, %struct.indexer** %3, align 8
  %27 = getelementptr inbounds %struct.indexer, %struct.indexer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %union.idx_entry*, %union.idx_entry** %25, i64 %28
  %30 = load %union.idx_entry*, %union.idx_entry** %29, align 8
  %31 = icmp ne %union.idx_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %13
  br label %91

33:                                               ; preds = %13
  %34 = load %struct.indexer*, %struct.indexer** %3, align 8
  %35 = getelementptr inbounds %struct.indexer, %struct.indexer* %34, i32 0, i32 2
  %36 = load %union.idx_entry**, %union.idx_entry*** %35, align 8
  %37 = load %struct.indexer*, %struct.indexer** %3, align 8
  %38 = getelementptr inbounds %struct.indexer, %struct.indexer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %union.idx_entry*, %union.idx_entry** %36, i64 %39
  %41 = load %union.idx_entry*, %union.idx_entry** %40, align 8
  store %union.idx_entry* %41, %union.idx_entry** %4, align 8
  %42 = load %struct.indexer*, %struct.indexer** %3, align 8
  %43 = getelementptr inbounds %struct.indexer, %struct.indexer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @IDX_ENTRY_BITS, align 4
  %46 = zext i32 %45 to i64
  %47 = shl i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load %struct.indexer*, %struct.indexer** %3, align 8
  %50 = getelementptr inbounds %struct.indexer, %struct.indexer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %union.idx_entry*, %union.idx_entry** %4, align 8
  %53 = load i32, i32* @IDX_ENTRY_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %union.idx_entry, %union.idx_entry* %52, i64 %55
  %57 = bitcast %union.idx_entry* %56 to i32*
  store i32 %51, i32* %57, align 4
  %58 = load i32, i32* @IDX_ENTRY_SIZE, align 4
  %59 = sub nsw i32 %58, 2
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %73, %33
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  %68 = load %union.idx_entry*, %union.idx_entry** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %union.idx_entry, %union.idx_entry* %68, i64 %70
  %72 = bitcast %union.idx_entry* %71 to i32*
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %5, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.indexer*, %struct.indexer** %3, align 8
  %85 = getelementptr inbounds %struct.indexer, %struct.indexer* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.indexer*, %struct.indexer** %3, align 8
  %87 = getelementptr inbounds %struct.indexer, %struct.indexer* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %32, %12
  %92 = load i32, i32* @ENOMEM, align 4
  store i32 %92, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %82
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %union.idx_entry* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

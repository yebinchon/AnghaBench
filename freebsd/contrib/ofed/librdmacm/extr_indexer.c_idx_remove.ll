; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indexer = type { i32, %union.idx_entry** }
%union.idx_entry = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @idx_remove(%struct.indexer* %0, i32 %1) #0 {
  %3 = alloca %struct.indexer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.idx_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.indexer* %0, %struct.indexer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.indexer*, %struct.indexer** %3, align 8
  %8 = getelementptr inbounds %struct.indexer, %struct.indexer* %7, i32 0, i32 1
  %9 = load %union.idx_entry**, %union.idx_entry*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @idx_array_index(i32 %10)
  %12 = getelementptr inbounds %union.idx_entry*, %union.idx_entry** %9, i64 %11
  %13 = load %union.idx_entry*, %union.idx_entry** %12, align 8
  store %union.idx_entry* %13, %union.idx_entry** %5, align 8
  %14 = load %union.idx_entry*, %union.idx_entry** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @idx_entry_index(i32 %15)
  %17 = getelementptr inbounds %union.idx_entry, %union.idx_entry* %14, i64 %16
  %18 = bitcast %union.idx_entry* %17 to i8**
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.indexer*, %struct.indexer** %3, align 8
  %21 = getelementptr inbounds %struct.indexer, %struct.indexer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %union.idx_entry*, %union.idx_entry** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @idx_entry_index(i32 %24)
  %26 = getelementptr inbounds %union.idx_entry, %union.idx_entry* %23, i64 %25
  %27 = bitcast %union.idx_entry* %26 to i32*
  store i32 %22, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.indexer*, %struct.indexer** %3, align 8
  %30 = getelementptr inbounds %struct.indexer, %struct.indexer* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %6, align 8
  ret i8* %31
}

declare dso_local i64 @idx_array_index(i32) #1

declare dso_local i64 @idx_entry_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

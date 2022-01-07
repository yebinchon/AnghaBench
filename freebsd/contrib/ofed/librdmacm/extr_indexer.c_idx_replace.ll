; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indexer = type { %union.idx_entry** }
%union.idx_entry = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idx_replace(%struct.indexer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.indexer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %union.idx_entry*, align 8
  store %struct.indexer* %0, %struct.indexer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.indexer*, %struct.indexer** %4, align 8
  %9 = getelementptr inbounds %struct.indexer, %struct.indexer* %8, i32 0, i32 0
  %10 = load %union.idx_entry**, %union.idx_entry*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @idx_array_index(i32 %11)
  %13 = getelementptr inbounds %union.idx_entry*, %union.idx_entry** %10, i64 %12
  %14 = load %union.idx_entry*, %union.idx_entry** %13, align 8
  store %union.idx_entry* %14, %union.idx_entry** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %union.idx_entry*, %union.idx_entry** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @idx_entry_index(i32 %17)
  %19 = getelementptr inbounds %union.idx_entry, %union.idx_entry* %16, i64 %18
  %20 = bitcast %union.idx_entry* %19 to i8**
  store i8* %15, i8** %20, align 8
  ret void
}

declare dso_local i64 @idx_array_index(i32) #1

declare dso_local i64 @idx_entry_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

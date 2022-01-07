; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idx_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indexer = type { i32, %union.idx_entry** }
%union.idx_entry = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idx_insert(%struct.indexer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.indexer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.idx_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.indexer* %0, %struct.indexer** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.indexer*, %struct.indexer** %4, align 8
  %9 = getelementptr inbounds %struct.indexer, %struct.indexer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.indexer*, %struct.indexer** %4, align 8
  %14 = call i32 @idx_grow(%struct.indexer* %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.indexer*, %struct.indexer** %4, align 8
  %21 = getelementptr inbounds %struct.indexer, %struct.indexer* %20, i32 0, i32 1
  %22 = load %union.idx_entry**, %union.idx_entry*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @idx_array_index(i32 %23)
  %25 = getelementptr inbounds %union.idx_entry*, %union.idx_entry** %22, i64 %24
  %26 = load %union.idx_entry*, %union.idx_entry** %25, align 8
  store %union.idx_entry* %26, %union.idx_entry** %6, align 8
  %27 = load %union.idx_entry*, %union.idx_entry** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @idx_entry_index(i32 %28)
  %30 = getelementptr inbounds %union.idx_entry, %union.idx_entry* %27, i64 %29
  %31 = bitcast %union.idx_entry* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.indexer*, %struct.indexer** %4, align 8
  %34 = getelementptr inbounds %struct.indexer, %struct.indexer* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %union.idx_entry*, %union.idx_entry** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @idx_entry_index(i32 %37)
  %39 = getelementptr inbounds %union.idx_entry, %union.idx_entry* %36, i64 %38
  %40 = bitcast %union.idx_entry* %39 to i8**
  store i8* %35, i8** %40, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %19, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @idx_grow(%struct.indexer*) #1

declare dso_local i64 @idx_array_index(i32) #1

declare dso_local i64 @idx_entry_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

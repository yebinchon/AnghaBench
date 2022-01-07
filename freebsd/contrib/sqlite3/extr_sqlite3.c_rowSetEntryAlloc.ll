; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_rowSetEntryAlloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_rowSetEntryAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i32 }
%struct.TYPE_3__ = type { i64, i32, %struct.RowSetChunk*, i32 }
%struct.RowSetChunk = type { i32, %struct.RowSetChunk* }

@ROWSET_ENTRY_PER_CHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RowSetEntry* (%struct.TYPE_3__*)* @rowSetEntryAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RowSetEntry* @rowSetEntryAlloc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.RowSetEntry*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.RowSetChunk*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.RowSetChunk* @sqlite3DbMallocRawNN(i32 %16, i32 16)
  store %struct.RowSetChunk* %17, %struct.RowSetChunk** %4, align 8
  %18 = load %struct.RowSetChunk*, %struct.RowSetChunk** %4, align 8
  %19 = icmp eq %struct.RowSetChunk* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %2, align 8
  br label %49

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load %struct.RowSetChunk*, %struct.RowSetChunk** %23, align 8
  %25 = load %struct.RowSetChunk*, %struct.RowSetChunk** %4, align 8
  %26 = getelementptr inbounds %struct.RowSetChunk, %struct.RowSetChunk* %25, i32 0, i32 1
  store %struct.RowSetChunk* %24, %struct.RowSetChunk** %26, align 8
  %27 = load %struct.RowSetChunk*, %struct.RowSetChunk** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store %struct.RowSetChunk* %27, %struct.RowSetChunk** %29, align 8
  %30 = load %struct.RowSetChunk*, %struct.RowSetChunk** %4, align 8
  %31 = getelementptr inbounds %struct.RowSetChunk, %struct.RowSetChunk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @ROWSET_ENTRY_PER_CHUNK, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %21, %1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = inttoptr i64 %47 to %struct.RowSetEntry*
  store %struct.RowSetEntry* %48, %struct.RowSetEntry** %2, align 8
  br label %49

49:                                               ; preds = %38, %20
  %50 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  ret %struct.RowSetEntry* %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.RowSetChunk* @sqlite3DbMallocRawNN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

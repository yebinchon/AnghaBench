; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@DBM_INSERT = common dso_local global i32 0, align 4
@R_NOOVERWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbm_store(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = bitcast %struct.TYPE_10__* %5 to i64*
  store i64 %1, i64* %11, align 4
  %12 = bitcast %struct.TYPE_10__* %6 to i64*
  store i64 %2, i64* %12, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)** %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DBM_INSERT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @R_NOOVERWRITE, align 4
  br label %35

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = call i32 %27(%struct.TYPE_12__* %28, %struct.TYPE_11__* %9, %struct.TYPE_11__* %10, i32 %36)
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

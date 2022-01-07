; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)* }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32* } @dbm_fetch(%struct.TYPE_12__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = bitcast %struct.TYPE_10__* %5 to { i64, i32* }*
  %11 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %10, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %10, i32 0, i32 1
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32* %14, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)** %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call i32 %21(%struct.TYPE_12__* %22, %struct.TYPE_11__* %8, %struct.TYPE_11__* %9, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  store i32* %31, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = bitcast %struct.TYPE_10__* %4 to { i64, i32* }*
  %37 = load { i64, i32* }, { i64, i32* }* %36, align 8
  ret { i64, i32* } %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

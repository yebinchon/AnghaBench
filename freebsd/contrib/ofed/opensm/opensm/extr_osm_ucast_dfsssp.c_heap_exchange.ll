; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_heap_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_heap_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @heap_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_exchange(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %24, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %32, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %55
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %61
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %62, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

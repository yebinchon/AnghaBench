; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_mem_api.c_isc_mempool_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_mem_api.c_isc_mempool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__**)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_mempool_destroy(%struct.TYPE_7__** %0) #0 {
  %2 = alloca %struct.TYPE_7__**, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %2, align 8
  %3 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %4 = icmp ne %struct.TYPE_7__** %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = call i64 @ISCAPI_MPOOL_VALID(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_7__**)*, i32 (%struct.TYPE_7__**)** %18, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %21 = call i32 %19(%struct.TYPE_7__** %20)
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ENSURE(i32 %25)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @ISCAPI_MPOOL_VALID(%struct.TYPE_7__*) #1

declare dso_local i32 @ENSURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

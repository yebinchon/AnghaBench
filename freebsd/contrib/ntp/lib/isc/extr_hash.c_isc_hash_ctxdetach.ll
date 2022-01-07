; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_isc_hash_ctxdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_isc_hash_ctxdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_hash_ctxdetach(%struct.TYPE_5__** %0) #0 {
  %2 = alloca %struct.TYPE_5__**, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %2, align 8
  %5 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %6 = icmp ne %struct.TYPE_5__** %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = call i64 @VALID_HASH(%struct.TYPE_5__* %9)
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @isc_refcount_decrement(i32* %19, i32* %4)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = call i32 @destroy(%struct.TYPE_5__** %3)
  br label %25

25:                                               ; preds = %23, %12
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %26, align 8
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @VALID_HASH(%struct.TYPE_5__*) #1

declare dso_local i32 @isc_refcount_decrement(i32*, i32*) #1

declare dso_local i32 @destroy(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

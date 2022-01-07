; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__**)* @destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy(%struct.TYPE_9__** %0) #0 {
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %2, align 8
  %6 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %7 = icmp ne %struct.TYPE_9__** %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = call i32 @LOCK(i32* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @REQUIRE(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_8__* @ISC_LIST_HEAD(i32 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %4, align 8
  br label %32

32:                                               ; preds = %41, %12
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %41 [
    i32 129, label %39
    i32 128, label %39
  ]

39:                                               ; preds = %35, %35
  %40 = call i32 @destroysource(%struct.TYPE_8__** %4)
  br label %41

41:                                               ; preds = %35, %39
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_8__* @ISC_LIST_HEAD(i32 %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %4, align 8
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ISC_LIST_EMPTY(i32 %49)
  %51 = call i32 @REQUIRE(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %5, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = call i32 @isc_entropypool_invalidate(i32* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = call i32 @UNLOCK(i32* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = call i32 @DESTROYLOCK(i32* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = call i32 @memset(%struct.TYPE_9__* %64, i32 0, i32 32)
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i32 @isc_mem_put(i32* %66, %struct.TYPE_9__* %67, i32 32)
  %69 = call i32 @isc_mem_detach(i32** %5)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_8__* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @destroysource(%struct.TYPE_8__**) #1

declare dso_local i32 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @isc_entropypool_invalidate(i32*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @DESTROYLOCK(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @isc_mem_detach(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

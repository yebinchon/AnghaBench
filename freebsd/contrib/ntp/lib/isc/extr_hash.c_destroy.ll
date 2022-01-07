; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**)* @destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy(%struct.TYPE_6__** %0) #0 {
  %2 = alloca %struct.TYPE_6__**, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x i8], align 1
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %2, align 8
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %8 = icmp ne %struct.TYPE_6__** %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @REQUIRE(i32 %15)
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %3, align 8
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call i32 @LOCK(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  %25 = call i32 @isc_refcount_destroy(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %13
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @isc_mem_put(i32* %34, %struct.TYPE_6__* %37, i32 %40)
  br label %42

42:                                               ; preds = %33, %13
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @UNLOCK(i32* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = call i32 @DESTROYLOCK(i32* %47)
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 1
  %52 = call i32 @memcpy(i8* %49, %struct.TYPE_6__* %51, i32 4)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = call i32 @memset(%struct.TYPE_6__* %53, i32 0, i32 40)
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 1
  %58 = call i32 @memcpy(i8* %55, %struct.TYPE_6__* %57, i32 4)
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %61 = call i64 @memcmp(i8* %59, i8* %60, i32 4)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @INSIST(i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = call i32 @isc_mem_put(i32* %65, %struct.TYPE_6__* %66, i32 40)
  %68 = call i32 @isc_mem_detach(i32** %4)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @isc_refcount_destroy(i32*) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @DESTROYLOCK(i32*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @isc_mem_detach(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

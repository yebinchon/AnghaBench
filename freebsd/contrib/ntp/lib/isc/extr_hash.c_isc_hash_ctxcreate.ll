; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_isc_hash_ctxcreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hash.c_isc_hash_ctxcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32*, %struct.TYPE_6__*, i32, i32, i32*, i32 }

@ISC_R_RANGE = common dso_local global i64 0, align 8
@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@HASH_MAGIC = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_hash_ctxcreate(i32* %0, i32* %1, i32 %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @REQUIRE(i32 %17)
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %20 = icmp ne %struct.TYPE_6__** %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @REQUIRE(i32 %27)
  store i32 undef, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 1
  %32 = mul i32 %31, 255
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @ISC_R_RANGE, align 8
  store i64 %35, i64* %5, align 8
  br label %117

36:                                               ; preds = %25
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.TYPE_6__* @isc_mem_get(i32* %37, i64 64)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = icmp eq %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %42, i64* %5, align 8
  br label %117

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = mul i64 64, %46
  store i64 %47, i64* %12, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call %struct.TYPE_6__* @isc_mem_get(i32* %48, i64 %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %13, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %52 = icmp eq %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %54, i64* %10, align 8
  br label %104

55:                                               ; preds = %43
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = call i64 @isc_mutex_init(i32* %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @ISC_R_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %104

63:                                               ; preds = %55
  %64 = load i32, i32* @HASH_MAGIC, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 7
  store i32* null, i32** %68, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 7
  %72 = call i32 @isc_mem_attach(i32* %69, i32** %71)
  %73 = load i32, i32* @ISC_FALSE, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = call i64 @isc_refcount_init(i32* %77, i32 1)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @ISC_R_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  br label %100

83:                                               ; preds = %63
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %94, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @UNUSED(i32* %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %98, align 8
  %99 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %99, i64* %5, align 8
  br label %117

100:                                              ; preds = %82
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = call i32 @DESTROYLOCK(i32* %102)
  br label %104

104:                                              ; preds = %100, %62, %53
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = call i32 @isc_mem_put(i32* %105, %struct.TYPE_6__* %106, i64 64)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @isc_mem_put(i32* %111, %struct.TYPE_6__* %112, i64 %113)
  br label %115

115:                                              ; preds = %110, %104
  %116 = load i64, i64* %10, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %115, %83, %41, %34
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_6__* @isc_mem_get(i32*, i64) #1

declare dso_local i64 @isc_mutex_init(i32*) #1

declare dso_local i32 @isc_mem_attach(i32*, i32**) #1

declare dso_local i64 @isc_refcount_init(i32*, i32) #1

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @DESTROYLOCK(i32*) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

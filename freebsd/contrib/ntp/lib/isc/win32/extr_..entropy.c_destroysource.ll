; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_destroysource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_destroysource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 (%struct.TYPE_14__*, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32*, i32 }

@link = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__**)* @destroysource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroysource(%struct.TYPE_14__** %0) #0 {
  %2 = alloca %struct.TYPE_14__**, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %2, align 8
  %6 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %2, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = load i32, i32* @link, align 4
  %17 = call i32 @ISC_LIST_UNLINK(i32 %14, %struct.TYPE_14__* %15, i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @REQUIRE(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %92 [
    i32 130, label %33
    i32 128, label %44
    i32 129, label %55
    i32 131, label %62
  ]

33:                                               ; preds = %1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = call i32 @destroyfilesource(i32* %41)
  br label %43

43:                                               ; preds = %38, %33
  br label %92

44:                                               ; preds = %1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = call i32 @destroyusocketsource(i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %92

55:                                               ; preds = %1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = call i32 @samplequeue_release(%struct.TYPE_15__* %56, i32* %60)
  br label %92

62:                                               ; preds = %1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %62
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.TYPE_14__*, i32)* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %77, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %78(%struct.TYPE_14__* %79, i32 %82)
  %84 = load i32, i32* @ISC_FALSE, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %75, %70, %62
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = call i32 @samplequeue_release(%struct.TYPE_15__* %88, i32* %90)
  br label %92

92:                                               ; preds = %1, %87, %55, %54, %43
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = call i32 @memset(%struct.TYPE_14__* %93, i32 0, i32 64)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = call i32 @isc_mem_put(i32 %97, %struct.TYPE_14__* %98, i32 64)
  ret void
}

declare dso_local i32 @ISC_LIST_UNLINK(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @destroyfilesource(i32*) #1

declare dso_local i32 @destroyusocketsource(i32*) #1

declare dso_local i32 @samplequeue_release(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

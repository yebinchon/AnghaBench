; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pcache1Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pcache1Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32, i32*, i64, %struct.TYPE_9__* }

@pcache1 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @pcache1Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pcache1Create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 512
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 65536
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = phi i1 [ false, %15 ], [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 300
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pcache1, i32 0, i32 0), align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 40, %30
  %32 = add i64 56, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @sqlite3MallocZero(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %7, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %138

39:                                               ; preds = %21
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pcache1, i32 0, i32 0), align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 1
  %45 = bitcast %struct.TYPE_10__* %44 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %8, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 10, i32* %47, align 8
  br label %49

48:                                               ; preds = %39
  store %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pcache1, i32 0, i32 1), %struct.TYPE_9__** %8, align 8
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = call i32 @pcache1EnterMutex(%struct.TYPE_9__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %68, align 8
  br label %69

69:                                               ; preds = %57, %49
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 8
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = call i64 @ROUND8(i32 4)
  %84 = add nsw i64 %82, %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 7
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = call i32 @pcache1ResizeHash(%struct.TYPE_10__* %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %69
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  store i32 10, i32* %99, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 10
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 6
  store i32* %118, i32** %120, align 8
  br label %126

121:                                              ; preds = %69
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 6
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %121, %97
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = call i32 @pcache1LeaveMutex(%struct.TYPE_9__* %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = bitcast %struct.TYPE_10__* %134 to i32*
  %136 = call i32 @pcache1Destroy(i32* %135)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %137

137:                                              ; preds = %133, %126
  br label %138

138:                                              ; preds = %137, %21
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = bitcast %struct.TYPE_10__* %139 to i32*
  ret i32* %140
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3MallocZero(i32) #1

declare dso_local i32 @pcache1EnterMutex(%struct.TYPE_9__*) #1

declare dso_local i64 @ROUND8(i32) #1

declare dso_local i32 @pcache1ResizeHash(%struct.TYPE_10__*) #1

declare dso_local i32 @pcache1LeaveMutex(%struct.TYPE_9__*) #1

declare dso_local i32 @pcache1Destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

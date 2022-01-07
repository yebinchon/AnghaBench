; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index.c_index_tree_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index.c_index_tree_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @index_tree_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_tree_append(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  br label %147

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @UINT32_C(i32 1)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @bsr32(i64 %71)
  %73 = shl i64 %68, %72
  %74 = xor i64 %67, %73
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %146

77:                                               ; preds = %34
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @ctz32(i64 %80)
  %82 = add nsw i64 %81, 2
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %87, %77
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %4, align 8
  br label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %5, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %5, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %83, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %6, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = icmp eq %struct.TYPE_5__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %102, align 8
  br label %118

103:                                              ; preds = %91
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = icmp eq %struct.TYPE_5__* %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %117, align 8
  br label %118

118:                                              ; preds = %103, %99
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %123, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %128, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = icmp ne %struct.TYPE_5__* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %118
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store %struct.TYPE_5__* %134, %struct.TYPE_5__** %138, align 8
  br label %139

139:                                              ; preds = %133, %118
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  store %struct.TYPE_5__* %140, %struct.TYPE_5__** %142, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  store %struct.TYPE_5__* %143, %struct.TYPE_5__** %145, align 8
  br label %146

146:                                              ; preds = %139, %34
  br label %147

147:                                              ; preds = %146, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @UINT32_C(i32) #1

declare dso_local i64 @bsr32(i64) #1

declare dso_local i64 @ctz32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

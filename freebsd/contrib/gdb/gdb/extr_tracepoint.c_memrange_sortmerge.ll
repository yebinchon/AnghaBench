; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_memrange_sortmerge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_memrange_sortmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collection_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }

@memrange_cmp = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.collection_list*)* @memrange_sortmerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memrange_sortmerge(%struct.collection_list* %0) #0 {
  %2 = alloca %struct.collection_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.collection_list* %0, %struct.collection_list** %2, align 8
  %5 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %6 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %9 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @memrange_cmp, align 4
  %12 = call i32 @qsort(%struct.TYPE_4__* %7, i32 %10, i32 4, i32 %11)
  %13 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %14 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %126

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %118, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %21 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %121

24:                                               ; preds = %18
  %25 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %26 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %34 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %32, %40
  br i1 %41, label %42, label %97

42:                                               ; preds = %24
  %43 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %44 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %52 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %50, %58
  %60 = load i64, i64* @MAX_REGISTER_SIZE, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %42
  %63 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %64 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %72 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %70, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %62
  %81 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %82 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %90 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i64 %88, i64* %95, align 8
  br label %96

96:                                               ; preds = %80, %62
  br label %118

97:                                               ; preds = %42, %24
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %105 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %111 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = call i32 @memcpy(%struct.TYPE_4__* %109, %struct.TYPE_4__* %115, i32 4)
  br label %117

117:                                              ; preds = %103, %97
  br label %118

118:                                              ; preds = %117, %96
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %18

121:                                              ; preds = %18
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.collection_list*, %struct.collection_list** %2, align 8
  %125 = getelementptr inbounds %struct.collection_list, %struct.collection_list* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %121, %1
  ret void
}

declare dso_local i32 @qsort(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

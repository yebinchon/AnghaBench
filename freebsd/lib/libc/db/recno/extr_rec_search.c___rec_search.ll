; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_search.c___rec_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_search.c___rec_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@P_ROOT = common dso_local global i32 0, align 4
@P_RLEAF = common dso_local global i32 0, align 4
@MPOOL_DIRTY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @__rec_search(%struct.TYPE_21__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = call i32 @BT_CLR(%struct.TYPE_21__* %16)
  %18 = load i32, i32* @P_ROOT, align 4
  store i32 %18, i32* %12, align 4
  store i64 0, i64* %14, align 8
  br label %19

19:                                               ; preds = %117, %3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.TYPE_18__* @mpool_get(i32 %22, i32 %23, i32 0)
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %9, align 8
  %25 = icmp eq %struct.TYPE_18__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %118

27:                                               ; preds = %19
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @P_RLEAF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %14, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %4, align 8
  br label %168

47:                                               ; preds = %27
  store i64 0, i64* %8, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %49 = call i64 @NEXTINDEX(%struct.TYPE_18__* %48)
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %67, %47
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call %struct.TYPE_17__* @GETRINTERNAL(%struct.TYPE_18__* %51, i64 %52)
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %11, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i64, i64* %6, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %50
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %14, align 8
  br label %50

73:                                               ; preds = %66
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i64, i64* %8, align 8
  %77 = sub nsw i64 %76, 1
  %78 = call i32 @BT_PUSH(%struct.TYPE_21__* %74, i32 %75, i64 %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %7, align 4
  switch i32 %82, label %117 [
    i32 130, label %83
    i32 128, label %97
    i32 129, label %111
  ]

83:                                               ; preds = %73
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = load i64, i64* %8, align 8
  %86 = sub nsw i64 %85, 1
  %87 = call %struct.TYPE_17__* @GETRINTERNAL(%struct.TYPE_18__* %84, i64 %86)
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %95 = load i32, i32* @MPOOL_DIRTY, align 4
  %96 = call i32 @mpool_put(i32 %93, %struct.TYPE_18__* %94, i32 %95)
  br label %117

97:                                               ; preds = %73
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call %struct.TYPE_17__* @GETRINTERNAL(%struct.TYPE_18__* %98, i64 %100)
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %109 = load i32, i32* @MPOOL_DIRTY, align 4
  %110 = call i32 @mpool_put(i32 %107, %struct.TYPE_18__* %108, i32 %109)
  br label %117

111:                                              ; preds = %73
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %116 = call i32 @mpool_put(i32 %114, %struct.TYPE_18__* %115, i32 0)
  br label %117

117:                                              ; preds = %73, %111, %97, %83
  br label %19

118:                                              ; preds = %26
  %119 = load i32, i32* @errno, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 129
  br i1 %121, label %122, label %166

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %158, %122
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = call %struct.TYPE_19__* @BT_POP(%struct.TYPE_21__* %124)
  store %struct.TYPE_19__* %125, %struct.TYPE_19__** %10, align 8
  %126 = icmp ne %struct.TYPE_19__* %125, null
  br i1 %126, label %127, label %165

127:                                              ; preds = %123
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.TYPE_18__* @mpool_get(i32 %130, i32 %133, i32 0)
  store %struct.TYPE_18__* %134, %struct.TYPE_18__** %9, align 8
  %135 = icmp eq %struct.TYPE_18__* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %165

137:                                              ; preds = %127
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 128
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call %struct.TYPE_17__* @GETRINTERNAL(%struct.TYPE_18__* %141, i64 %144)
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %146, align 8
  br label %158

149:                                              ; preds = %137
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call %struct.TYPE_17__* @GETRINTERNAL(%struct.TYPE_18__* %150, i64 %153)
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %149, %140
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %163 = load i32, i32* @MPOOL_DIRTY, align 4
  %164 = call i32 @mpool_put(i32 %161, %struct.TYPE_18__* %162, i32 %163)
  br label %123

165:                                              ; preds = %136, %123
  br label %166

166:                                              ; preds = %165, %118
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* @errno, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %168

168:                                              ; preds = %166, %34
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %169
}

declare dso_local i32 @BT_CLR(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_18__* @mpool_get(i32, i32, i32) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @GETRINTERNAL(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @BT_PUSH(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_19__* @BT_POP(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

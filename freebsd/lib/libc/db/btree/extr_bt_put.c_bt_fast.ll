; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_put.c_bt_fast.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_put.c_bt_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }

@NOT = common dso_local global i8* null, align 8
@FORWARD = common dso_local global i64 0, align 8
@P_INVALID = common dso_local global i64 0, align 8
@bt_cache_hit = common dso_local global i32 0, align 4
@bt_cache_miss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32*)* @bt_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @bt_fast(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_17__* @mpool_get(i32 %15, i32 %19, i32 0)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %10, align 8
  %21 = icmp eq %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i8*, i8** @NOT, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %156

27:                                               ; preds = %4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @NBLEAFDBT(i32 %41, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 4
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %27
  br label %146

57:                                               ; preds = %27
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FORWARD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %110

63:                                               ; preds = %57
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @P_INVALID, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %146

73:                                               ; preds = %63
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = call i32 @NEXTINDEX(%struct.TYPE_17__* %78)
  %80 = sub nsw i32 %79, 1
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %146

83:                                               ; preds = %73
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = call i32 @__bt_cmp(%struct.TYPE_20__* %84, %struct.TYPE_19__* %85, %struct.TYPE_18__* %87)
  store i32 %88, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %146

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %105

100:                                              ; preds = %91
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  br label %105

105:                                              ; preds = %100, %94
  %106 = phi i32 [ %99, %94 ], [ %104, %100 ]
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %139

110:                                              ; preds = %57
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @P_INVALID, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %146

120:                                              ; preds = %110
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %146

127:                                              ; preds = %120
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = call i32 @__bt_cmp(%struct.TYPE_20__* %128, %struct.TYPE_19__* %129, %struct.TYPE_18__* %131)
  store i32 %132, i32* %12, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %146

135:                                              ; preds = %127
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %105
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %5, align 8
  br label %156

146:                                              ; preds = %134, %126, %119, %90, %82, %72, %56
  %147 = load i8*, i8** @NOT, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = call i32 @mpool_put(i32 %153, %struct.TYPE_17__* %154, i32 0)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %156

156:                                              ; preds = %146, %139, %22
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %157
}

declare dso_local %struct.TYPE_17__* @mpool_get(i32, i32, i32) #1

declare dso_local i64 @NBLEAFDBT(i32, i32) #1

declare dso_local i32 @NEXTINDEX(%struct.TYPE_17__*) #1

declare dso_local i32 @__bt_cmp(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_delete.c___rec_dleaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_delete.c___rec_dleaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64*, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@P_BIGDATA = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i64 0, align 8
@RET_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_dleaf(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_11__* @GETRLEAF(%struct.TYPE_12__* %15, i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = bitcast %struct.TYPE_11__* %17 to i8*
  store i8* %18, i8** %14, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @P_BIGDATA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @__ovfl_delete(%struct.TYPE_13__* %26, i32 %29)
  %31 = load i64, i64* @RET_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i64, i64* @RET_ERROR, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %157

36:                                               ; preds = %25, %3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = call i32 @NRLEAF(%struct.TYPE_11__* %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = bitcast %struct.TYPE_12__* %39 to i8*
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memmove(i8* %49, i8* %50, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64* %79, i64** %9, align 8
  %80 = ptrtoint i64* %75 to i64
  %81 = ptrtoint i64* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %102, %36
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %10, align 8
  %87 = icmp ne i64 %85, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i64*, i64** %9, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64*, i64** %9, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %94, %88
  br label %102

102:                                              ; preds = %101
  %103 = load i64*, i64** %9, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %9, align 8
  br label %84

105:                                              ; preds = %84
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = call i64 @NEXTINDEX(%struct.TYPE_12__* %109)
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64*, i64** %9, align 8
  %113 = ptrtoint i64* %111 to i64
  %114 = ptrtoint i64* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 8
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %142, %105
  %118 = load i64, i64* %10, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load i64*, i64** %9, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load i64*, i64** %9, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  br label %138

134:                                              ; preds = %121
  %135 = load i64*, i64** %9, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  br label %138

138:                                              ; preds = %134, %127
  %139 = phi i64 [ %133, %127 ], [ %137, %134 ]
  %140 = load i64*, i64** %9, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %138
  %143 = load i64*, i64** %9, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %9, align 8
  br label %117

145:                                              ; preds = %117
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %145, %33
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_11__* @GETRLEAF(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @__ovfl_delete(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @NRLEAF(%struct.TYPE_11__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

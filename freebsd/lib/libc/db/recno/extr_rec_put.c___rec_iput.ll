; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_put.c___rec_iput.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_put.c___rec_iput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i64, i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64* }

@NOVFLSIZE = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i64 0, align 8
@P_BIGDATA = common dso_local global i32 0, align 4
@SINSERT = common dso_local global i32 0, align 4
@SEARCH = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@B_MODIFIED = common dso_local global i32 0, align 4
@MPOOL_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_iput(%struct.TYPE_23__* %0, i64 %1, %struct.TYPE_22__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* @NOVFLSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %20, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %21, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = call i64 @__ovfl_put(%struct.TYPE_23__* %35, %struct.TYPE_22__* %36, i32* %15)
  %38 = load i64, i64* @RET_ERROR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* @RET_ERROR, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %214

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i8* %26, i8** %44, align 8
  %45 = load i32, i32* @NOVFLSIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = call i32 @memcpy(i8* %26, i32* %15, i32 4)
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %26, i64 4
  %53 = bitcast i8* %52 to i64*
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @P_BIGDATA, align 4
  store i32 %54, i32* %17, align 4
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %8, align 8
  br label %56

55:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %64, %56
  %71 = load i32, i32* @SINSERT, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @SEARCH, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = call %struct.TYPE_21__* @__rec_search(%struct.TYPE_23__* %57, i64 %58, i32 %75)
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %11, align 8
  %77 = icmp eq %struct.TYPE_21__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i64, i64* @RET_ERROR, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %214

81:                                               ; preds = %74
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %12, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %93 [
    i32 129, label %89
    i32 128, label %92
  ]

89:                                               ; preds = %81
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %115

92:                                               ; preds = %81
  br label %115

93:                                               ; preds = %81
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @__rec_dleaf(%struct.TYPE_23__* %100, %struct.TYPE_20__* %101, i32 %102)
  %104 = load i64, i64* @RET_ERROR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %111 = call i32 @mpool_put(i32 %109, %struct.TYPE_20__* %110, i32 0)
  %112 = load i64, i64* @RET_ERROR, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %214

114:                                              ; preds = %99, %93
  br label %115

115:                                              ; preds = %114, %92, %89
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @NRLEAFDBT(i64 %118)
  store i64 %119, i64* %16, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %122, %125
  %127 = load i64, i64* %16, align 8
  %128 = add i64 %127, 4
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %115
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i64, i64* %16, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @__bt_split(%struct.TYPE_23__* %131, %struct.TYPE_20__* %132, i32* null, %struct.TYPE_22__* %133, i32 %134, i64 %135, i32 %136)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* @RET_SUCCESS, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %130
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %130
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %214

148:                                              ; preds = %115
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %151 = call i32 @NEXTINDEX(%struct.TYPE_20__* %150)
  store i32 %151, i32* %14, align 4
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %148
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = trunc i64 %171 to i32
  %173 = call i32 @memmove(i64* %160, i64* %166, i32 %172)
  br label %174

174:                                              ; preds = %153, %148
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 4
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* %16, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  store i64 %183, i64* %189, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %191 = bitcast %struct.TYPE_20__* %190 to i8*
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8* %195, i8** %19, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @WR_RLEAF(i8* %196, %struct.TYPE_22__* %197, i32 %198)
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %205 = load i32, i32* @B_MODIFIED, align 4
  %206 = call i32 @F_SET(%struct.TYPE_23__* %204, i32 %205)
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %211 = load i32, i32* @MPOOL_DIRTY, align 4
  %212 = call i32 @mpool_put(i32 %209, %struct.TYPE_20__* %210, i32 %211)
  %213 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %213, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %214

214:                                              ; preds = %174, %146, %106, %78, %40
  %215 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @__ovfl_put(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local %struct.TYPE_21__* @__rec_search(%struct.TYPE_23__*, i64, i32) #2

declare dso_local i64 @__rec_dleaf(%struct.TYPE_23__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @mpool_put(i32, %struct.TYPE_20__*, i32) #2

declare dso_local i64 @NRLEAFDBT(i64) #2

declare dso_local i32 @__bt_split(%struct.TYPE_23__*, %struct.TYPE_20__*, i32*, %struct.TYPE_22__*, i32, i64, i32) #2

declare dso_local i32 @NEXTINDEX(%struct.TYPE_20__*) #2

declare dso_local i32 @memmove(i64*, i64*, i32) #2

declare dso_local i32 @WR_RLEAF(i8*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @F_SET(%struct.TYPE_23__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

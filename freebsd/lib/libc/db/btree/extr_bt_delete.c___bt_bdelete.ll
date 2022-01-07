; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_bdelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_bdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32* }

@RET_SUCCESS = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@B_NODUPS = common dso_local global i32 0, align 4
@MPOOL_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @__bt_bdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bt_bdelete(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %173, %163, %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_11__* @__bt_search(%struct.TYPE_12__* %12, i32* %13, i32* %9)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @RET_SUCCESS, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @RET_ERROR, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %176

25:                                               ; preds = %11
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @mpool_put(i32 %31, i32* %34, i32 0)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @RET_SUCCESS, align 4
  br label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @RET_SPECIAL, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %3, align 4
  br label %176

44:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %7, align 8
  br label %48

48:                                               ; preds = %104, %44
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @__bt_dleaf(%struct.TYPE_12__* %49, i32* %50, i32* %51, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @mpool_put(i32 %60, i32* %61, i32 0)
  %63 = load i32, i32* @RET_ERROR, align 4
  store i32 %63, i32* %3, align 4
  br label %176

64:                                               ; preds = %48
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = load i32, i32* @B_NODUPS, align 4
  %67 = call i64 @F_ISSET(%struct.TYPE_12__* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = call i64 @NEXTINDEX(i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i64 @__bt_pdelete(%struct.TYPE_12__* %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @RET_ERROR, align 4
  store i32 %79, i32* %3, align 4
  br label %176

80:                                               ; preds = %73
  br label %88

81:                                               ; preds = %69
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @MPOOL_DIRTY, align 4
  %87 = call i32 @mpool_put(i32 %84, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %80
  %89 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %89, i32* %3, align 4
  br label %176

90:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i64 @NEXTINDEX(i32* %95)
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = call i64 @__bt_cmp(%struct.TYPE_12__* %99, i32* %100, %struct.TYPE_11__* %101)
  %103 = icmp eq i64 %102, 0
  br label %104

104:                                              ; preds = %98, %91
  %105 = phi i1 [ false, %91 ], [ %103, %98 ]
  br i1 %105, label %48, label %106

106:                                              ; preds = %104
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i64 @NEXTINDEX(i32* %110)
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 1, i32* %10, align 4
  br label %114

114:                                              ; preds = %113, %106
  br label %115

115:                                              ; preds = %151, %114
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %117, align 8
  %120 = icmp sgt i64 %118, 0
  br i1 %120, label %121, label %152

121:                                              ; preds = %115
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = call i64 @__bt_cmp(%struct.TYPE_12__* %122, i32* %123, %struct.TYPE_11__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %152

128:                                              ; preds = %121
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @__bt_dleaf(%struct.TYPE_12__* %129, i32* %130, i32* %131, i64 %134)
  %136 = load i32, i32* @RET_ERROR, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %128
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @mpool_put(i32 %141, i32* %142, i32 0)
  %144 = load i32, i32* @RET_ERROR, align 4
  store i32 %144, i32* %3, align 4
  br label %176

145:                                              ; preds = %128
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 1, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %145
  br label %115

152:                                              ; preds = %127, %115
  %153 = load i32*, i32** %7, align 8
  %154 = call i64 @NEXTINDEX(i32* %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = call i64 @__bt_pdelete(%struct.TYPE_12__* %157, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @RET_ERROR, align 4
  store i32 %162, i32* %3, align 4
  br label %176

163:                                              ; preds = %156
  br label %11

164:                                              ; preds = %152
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* @MPOOL_DIRTY, align 4
  %170 = call i32 @mpool_put(i32 %167, i32* %168, i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  br label %11

174:                                              ; preds = %164
  %175 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %161, %138, %88, %78, %57, %42, %23
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_11__* @__bt_search(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @mpool_put(i32, i32*, i32) #1

declare dso_local i32 @__bt_dleaf(%struct.TYPE_12__*, i32*, i32*, i64) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @NEXTINDEX(i32*) #1

declare dso_local i64 @__bt_pdelete(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @__bt_cmp(%struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

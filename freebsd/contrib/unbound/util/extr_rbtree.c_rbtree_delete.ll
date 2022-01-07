; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rbtree.c_rbtree_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rbtree.c_rbtree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32 }

@RBTREE_NULL = common dso_local global %struct.TYPE_21__* null, align 8
@RED = common dso_local global i64 0, align 8
@BLACK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @rbtree_delete(%struct.TYPE_20__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.TYPE_21__* @rbtree_search(%struct.TYPE_20__* %9, i8* %10)
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = icmp eq %struct.TYPE_21__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %230

14:                                               ; preds = %2
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %23 = icmp ne %struct.TYPE_21__* %21, %22
  br i1 %23, label %24, label %142

24:                                               ; preds = %14
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %29 = icmp ne %struct.TYPE_21__* %27, %28
  br i1 %29, label %30, label %142

30:                                               ; preds = %24
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %8, align 8
  br label %34

34:                                               ; preds = %40, %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %39 = icmp ne %struct.TYPE_21__* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %8, align 8
  br label %34

44:                                               ; preds = %34
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = call i32 @swap_int8(i64* %46, i64* %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = call i32 @change_parent_ptr(%struct.TYPE_20__* %50, %struct.TYPE_21__* %53, %struct.TYPE_21__* %54, %struct.TYPE_21__* %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %61 = icmp ne %struct.TYPE_21__* %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %44
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = call i32 @change_parent_ptr(%struct.TYPE_20__* %63, %struct.TYPE_21__* %66, %struct.TYPE_21__* %67, %struct.TYPE_21__* %68)
  br label %70

70:                                               ; preds = %62, %44
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = call i32 @change_child_ptr(%struct.TYPE_21__* %73, %struct.TYPE_21__* %74, %struct.TYPE_21__* %75)
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = call i32 @change_child_ptr(%struct.TYPE_21__* %79, %struct.TYPE_21__* %80, %struct.TYPE_21__* %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = call i32 @change_child_ptr(%struct.TYPE_21__* %85, %struct.TYPE_21__* %86, %struct.TYPE_21__* %87)
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %90, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = call i32 @change_child_ptr(%struct.TYPE_21__* %91, %struct.TYPE_21__* %92, %struct.TYPE_21__* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %100 = call i32 @change_child_ptr(%struct.TYPE_21__* %97, %struct.TYPE_21__* %98, %struct.TYPE_21__* %99)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %105 = icmp ne %struct.TYPE_21__* %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %70
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = call i32 @change_child_ptr(%struct.TYPE_21__* %109, %struct.TYPE_21__* %110, %struct.TYPE_21__* %111)
  br label %113

113:                                              ; preds = %106, %70
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = icmp eq %struct.TYPE_21__* %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 3
  store %struct.TYPE_21__* %123, %struct.TYPE_21__** %125, align 8
  br label %126

126:                                              ; preds = %119, %113
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %131 = call i32 @swap_np(%struct.TYPE_21__** %128, %struct.TYPE_21__** %130)
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  %136 = call i32 @swap_np(%struct.TYPE_21__** %133, %struct.TYPE_21__** %135)
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = call i32 @swap_np(%struct.TYPE_21__** %138, %struct.TYPE_21__** %140)
  br label %142

142:                                              ; preds = %126, %24, %14
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %147 = icmp eq %struct.TYPE_21__* %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %150, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %153 = icmp eq %struct.TYPE_21__* %151, %152
  br label %154

154:                                              ; preds = %148, %142
  %155 = phi i1 [ true, %142 ], [ %153, %148 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @log_assert(i32 %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %159, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %162 = icmp ne %struct.TYPE_21__* %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  store %struct.TYPE_21__* %166, %struct.TYPE_21__** %7, align 8
  br label %171

167:                                              ; preds = %154
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  store %struct.TYPE_21__* %170, %struct.TYPE_21__** %7, align 8
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %178 = call i32 @change_parent_ptr(%struct.TYPE_20__* %172, %struct.TYPE_21__* %175, %struct.TYPE_21__* %176, %struct.TYPE_21__* %177)
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = call i32 @change_child_ptr(%struct.TYPE_21__* %179, %struct.TYPE_21__* %180, %struct.TYPE_21__* %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @RED, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %171
  br label %215

191:                                              ; preds = %171
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @RED, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %191
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %200 = icmp ne %struct.TYPE_21__* %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i8*, i8** @BLACK, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %201, %197
  br label %214

207:                                              ; preds = %191
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = call i32 @rbtree_delete_fixup(%struct.TYPE_20__* %208, %struct.TYPE_21__* %209, %struct.TYPE_21__* %212)
  br label %214

214:                                              ; preds = %207, %206
  br label %215

215:                                              ; preds = %214, %190
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 3
  store %struct.TYPE_21__* %216, %struct.TYPE_21__** %218, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 2
  store %struct.TYPE_21__* %219, %struct.TYPE_21__** %221, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** @RBTREE_NULL, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 1
  store %struct.TYPE_21__* %222, %struct.TYPE_21__** %224, align 8
  %225 = load i8*, i8** @BLACK, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %229, %struct.TYPE_21__** %3, align 8
  br label %230

230:                                              ; preds = %215, %13
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %231
}

declare dso_local %struct.TYPE_21__* @rbtree_search(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @swap_int8(i64*, i64*) #1

declare dso_local i32 @change_parent_ptr(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @change_child_ptr(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @swap_np(%struct.TYPE_21__**, %struct.TYPE_21__**) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @rbtree_delete_fixup(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

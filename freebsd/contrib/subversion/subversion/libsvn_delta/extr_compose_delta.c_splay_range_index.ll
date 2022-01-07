; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_splay_range_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_splay_range_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_4__*)* @splay_range_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @splay_range_index(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__**, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %227

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %7, align 8
  br label %22

22:                                               ; preds = %116, %19
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %9, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %5, align 8
  br label %54

54:                                               ; preds = %41, %33, %28
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp eq %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %117

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %8, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %5, align 8
  br label %116

68:                                               ; preds = %22
  %69 = load i64, i64* %3, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %68
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  %80 = load i64, i64* %3, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %80, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %79
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %10, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %5, align 8
  br label %100

100:                                              ; preds = %87, %79, %74
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = icmp eq %struct.TYPE_5__* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %117

106:                                              ; preds = %100
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %7, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %5, align 8
  br label %115

114:                                              ; preds = %68
  br label %117

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %60
  br label %22

117:                                              ; preds = %114, %105, %59
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  store %struct.TYPE_5__* %133, %struct.TYPE_5__** %135, align 8
  %136 = load i64, i64* %3, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %202

141:                                              ; preds = %117
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = icmp ne %struct.TYPE_5__* %144, null
  br i1 %145, label %146, label %202

146:                                              ; preds = %141
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = icmp eq %struct.TYPE_5__* %151, null
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %11, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  store %struct.TYPE_5__* %159, %struct.TYPE_5__** %161, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  store %struct.TYPE_5__* %162, %struct.TYPE_5__** %164, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %165, %struct.TYPE_5__** %5, align 8
  br label %201

166:                                              ; preds = %146
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  store %struct.TYPE_5__** %168, %struct.TYPE_5__*** %12, align 8
  br label %169

169:                                              ; preds = %175, %166
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = icmp ne %struct.TYPE_5__* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  store %struct.TYPE_5__** %178, %struct.TYPE_5__*** %12, align 8
  br label %169

179:                                              ; preds = %169
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %180, %struct.TYPE_5__** %8, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  store %struct.TYPE_5__* %183, %struct.TYPE_5__** %7, align 8
  %184 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  store %struct.TYPE_5__* %185, %struct.TYPE_5__** %5, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  store %struct.TYPE_5__* %188, %struct.TYPE_5__** %189, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store %struct.TYPE_5__* %192, %struct.TYPE_5__** %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  store %struct.TYPE_5__* %195, %struct.TYPE_5__** %197, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  store %struct.TYPE_5__* %198, %struct.TYPE_5__** %200, align 8
  br label %201

201:                                              ; preds = %179, %153
  br label %202

202:                                              ; preds = %201, %141, %117
  %203 = load i64, i64* %3, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp sge i64 %203, %206
  br i1 %207, label %220, label %208

208:                                              ; preds = %202
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = icmp eq %struct.TYPE_5__* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = icmp eq i32* %216, null
  br label %218

218:                                              ; preds = %213, %208
  %219 = phi i1 [ false, %208 ], [ %217, %213 ]
  br label %220

220:                                              ; preds = %218, %202
  %221 = phi i1 [ true, %202 ], [ %219, %218 ]
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  store %struct.TYPE_5__* %224, %struct.TYPE_5__** %226, align 8
  br label %227

227:                                              ; preds = %220, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

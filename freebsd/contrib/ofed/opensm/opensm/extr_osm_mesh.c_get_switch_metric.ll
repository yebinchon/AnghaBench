; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_get_switch_metric.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_get_switch_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32**, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @get_switch_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_switch_metric(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32* %23, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %26, i64 %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %13, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %18, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %19, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @OSM_LOG_ENTER(i32* %37)
  br label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = load i32, i32* %19, align 4
  %42 = call i32** @m_alloc(%struct.TYPE_13__* %40, i32 %41)
  store i32** %42, i32*** %17, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %241

45:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %225, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %228

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 %64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %14, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %85, %50
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = load i32, i32* @LARGE, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %77, i64 %79
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %74, i32* %84, align 4
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %67

88:                                               ; preds = %67
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %183, %88
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %179, %93
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %182

100:                                              ; preds = %94
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %103, i64 %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %15, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @LARGE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %179

116:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %175, %116
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ult i32 %118, %123
  br i1 %124, label %125, label %178

125:                                              ; preds = %117
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %130, i64 %132
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %12, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %139, i64 %141
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %16, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %125
  br label %175

148:                                              ; preds = %125
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %154, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %148
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  store i32 %167, i32* %171, align 4
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %161, %148
  br label %175

175:                                              ; preds = %174, %147
  %176 = load i32, i32* %8, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %117

178:                                              ; preds = %117
  br label %179

179:                                              ; preds = %178, %115
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %94

182:                                              ; preds = %94
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %93, label %186

186:                                              ; preds = %183
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %221, %186
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %187
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %194, i64 %196
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %11, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %203, i64 %205
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  store %struct.TYPE_11__* %207, %struct.TYPE_11__** %15, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32**, i32*** %17, align 8
  %214 = load i32, i32* %7, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %212, i32* %220, align 4
  br label %221

221:                                              ; preds = %191
  %222 = load i32, i32* %8, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %187

224:                                              ; preds = %187
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %7, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %46

228:                                              ; preds = %46
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %230 = load i32, i32* %19, align 4
  %231 = load i32**, i32*** %17, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = call i64 @char_poly(%struct.TYPE_13__* %229, i32 %230, i32** %231, i32* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %228
  %237 = load i32**, i32*** %17, align 8
  %238 = load i32, i32* %19, align 4
  %239 = call i32 @m_free(i32** %237, i32 %238)
  store i32** null, i32*** %17, align 8
  br label %241

240:                                              ; preds = %228
  store i32 0, i32* %6, align 4
  br label %241

241:                                              ; preds = %240, %236, %44
  %242 = load i32**, i32*** %17, align 8
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  store i32** %242, i32*** %244, align 8
  %245 = load i32*, i32** %5, align 8
  %246 = call i32 @OSM_LOG_EXIT(i32* %245)
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32** @m_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @char_poly(%struct.TYPE_13__*, i32, i32**, i32*) #1

declare dso_local i32 @m_free(i32**, i32) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

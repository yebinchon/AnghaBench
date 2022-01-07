; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_remove_semipermanent_depend_for_sp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_remove_semipermanent_depend_for_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__****, %struct.TYPE_11__** }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32, i32)* @remove_semipermanent_depend_for_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_semipermanent_depend_for_sp(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_13__****, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %20, align 8
  store %struct.TYPE_11__** %21, %struct.TYPE_11__*** %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %23, align 8
  store %struct.TYPE_13__**** %24, %struct.TYPE_13__***** %10, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %25, i64 %27
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @get_next_switch(%struct.TYPE_12__* %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %238, %4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %239

45:                                               ; preds = %41
  %46 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %46, i64 %48
  %50 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %50, i64 %52
  %54 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %54, i64 %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %17, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %60 = icmp ne %struct.TYPE_13__* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @CL_ASSERT(i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %82

67:                                               ; preds = %45
  %68 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %68, i64 %70
  %72 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %72, i64 %74
  %76 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %76, i64 %78
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %81 = call i32 @free(%struct.TYPE_13__* %80)
  br label %216

82:                                               ; preds = %45
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %215

90:                                               ; preds = %82
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @get_next_switch(%struct.TYPE_12__* %103, i32 %104, i32 %105)
  store i32 %106, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %139, %90
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %107
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %10, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %122, i64 %124
  %126 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %126, i64 %128
  %130 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %130, i64 %132
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = icmp eq %struct.TYPE_13__* %121, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %113
  store i32 1, i32* %18, align 4
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %136, %113
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %107

142:                                              ; preds = %107
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @CL_ASSERT(i32 %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %204

154:                                              ; preds = %142
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %13, align 4
  br label %156

156:                                              ; preds = %196, %154
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %199

163:                                              ; preds = %156
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  store %struct.TYPE_13__* %172, %struct.TYPE_13__** %179, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  store i32 %188, i32* %195, align 8
  br label %196

196:                                              ; preds = %163
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %156

199:                                              ; preds = %156
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %201, align 4
  br label %214

204:                                              ; preds = %142
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %204, %199
  br label %215

215:                                              ; preds = %214, %82
  br label %216

216:                                              ; preds = %215, %67
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %6, align 4
  %218 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %218, i64 %220
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %216
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @get_next_switch(%struct.TYPE_12__* %234, i32 %235, i32 %236)
  store i32 %237, i32* %11, align 4
  br label %238

238:                                              ; preds = %233, %216
  br label %41

239:                                              ; preds = %41
  ret void
}

declare dso_local i32 @get_next_switch(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @CL_ASSERT(i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

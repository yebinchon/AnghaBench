; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_generate_cdg_for_sp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_generate_cdg_for_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__****, %struct.TYPE_11__** }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, i32)* @generate_cdg_for_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_cdg_for_sp(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca %struct.TYPE_13__****, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  store %struct.TYPE_11__** %24, %struct.TYPE_11__*** %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %26, align 8
  store %struct.TYPE_13__**** %27, %struct.TYPE_13__***** %12, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %18, align 8
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @get_next_switch(%struct.TYPE_12__* %40, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %223, %4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %225

48:                                               ; preds = %44
  %49 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %49, i64 %51
  %53 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %53, i64 %55
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %57, i64 %59
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = icmp eq %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %96

63:                                               ; preds = %48
  %64 = load i32, i32* %10, align 4
  %65 = sub i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 16
  %68 = add i64 40, %67
  %69 = trunc i64 %68 to i32
  %70 = call %struct.TYPE_13__* @calloc(i32 1, i32 %69)
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %17, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %226

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %84 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %12, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %84, i64 %86
  %88 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %88, i64 %90
  %92 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %92, i64 %94
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %95, align 8
  br label %110

96:                                               ; preds = %48
  %97 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %12, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %97, i64 %99
  %101 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %101, i64 %103
  %105 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %105, i64 %107
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %17, align 8
  br label %110

110:                                              ; preds = %96, %74
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %116 = icmp ne %struct.TYPE_13__* %115, null
  br i1 %116, label %117, label %196

117:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %146, %117
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %118
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %134 = icmp eq %struct.TYPE_13__* %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %124
  store i32 1, i32* %16, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %135, %124
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %118

149:                                              ; preds = %118
  %150 = load i32, i32* %16, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %149
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  store %struct.TYPE_13__* %153, %struct.TYPE_13__** %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @CL_ASSERT(i32 %183)
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %152
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %189, %152
  br label %195

195:                                              ; preds = %194, %149
  br label %196

196:                                              ; preds = %195, %110
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %7, align 4
  %198 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %198, i64 %200
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %196
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* @NONE, align 4
  %216 = icmp ne i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @CL_ASSERT(i32 %217)
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @get_next_switch(%struct.TYPE_12__* %219, i32 %220, i32 %221)
  store i32 %222, i32* %13, align 4
  br label %223

223:                                              ; preds = %213, %196
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %224, %struct.TYPE_13__** %18, align 8
  br label %44

225:                                              ; preds = %44
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %73
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @get_next_switch(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @CL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

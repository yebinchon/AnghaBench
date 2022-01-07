; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ffind_face_corner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ffind_face_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_switch = type { i32, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, %struct.link*, i64 }
%struct.link = type { %struct.endpoint* }
%struct.endpoint = type { i64, i64, %struct.f_switch* }

@PASSTHRU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f_switch* (%struct.f_switch*, %struct.f_switch*, %struct.f_switch*)* @ffind_face_corner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f_switch* @ffind_face_corner(%struct.f_switch* %0, %struct.f_switch* %1, %struct.f_switch* %2) #0 {
  %4 = alloca %struct.f_switch*, align 8
  %5 = alloca %struct.f_switch*, align 8
  %6 = alloca %struct.f_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.link*, align 8
  %10 = alloca %struct.endpoint*, align 8
  %11 = alloca %struct.f_switch*, align 8
  %12 = alloca %struct.f_switch*, align 8
  store %struct.f_switch* %0, %struct.f_switch** %4, align 8
  store %struct.f_switch* %1, %struct.f_switch** %5, align 8
  store %struct.f_switch* %2, %struct.f_switch** %6, align 8
  store %struct.f_switch* null, %struct.f_switch** %12, align 8
  %13 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %14 = icmp ne %struct.f_switch* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %17 = icmp ne %struct.f_switch* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %20 = icmp ne %struct.f_switch* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15, %3
  br label %219

22:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %215, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %26 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %218

29:                                               ; preds = %23
  %30 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %31 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %29
  %39 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %40 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %38
  %50 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %51 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PASSTHRU, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %49, %38, %29
  br label %215

62:                                               ; preds = %49
  %63 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %64 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.link*, %struct.link** %70, align 8
  store %struct.link* %71, %struct.link** %9, align 8
  %72 = load %struct.link*, %struct.link** %9, align 8
  %73 = getelementptr inbounds %struct.link, %struct.link* %72, i32 0, i32 0
  %74 = load %struct.endpoint*, %struct.endpoint** %73, align 8
  %75 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %74, i64 0
  %76 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %79 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %62
  %83 = load %struct.link*, %struct.link** %9, align 8
  %84 = getelementptr inbounds %struct.link, %struct.link* %83, i32 0, i32 0
  %85 = load %struct.endpoint*, %struct.endpoint** %84, align 8
  %86 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %85, i64 1
  store %struct.endpoint* %86, %struct.endpoint** %10, align 8
  br label %92

87:                                               ; preds = %62
  %88 = load %struct.link*, %struct.link** %9, align 8
  %89 = getelementptr inbounds %struct.link, %struct.link* %88, i32 0, i32 0
  %90 = load %struct.endpoint*, %struct.endpoint** %89, align 8
  %91 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %90, i64 0
  store %struct.endpoint* %91, %struct.endpoint** %10, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.endpoint*, %struct.endpoint** %10, align 8
  %94 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PASSTHRU, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.endpoint*, %struct.endpoint** %10, align 8
  %100 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %99, i32 0, i32 2
  %101 = load %struct.f_switch*, %struct.f_switch** %100, align 8
  %102 = icmp ne %struct.f_switch* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98, %92
  br label %215

104:                                              ; preds = %98
  %105 = load %struct.endpoint*, %struct.endpoint** %10, align 8
  %106 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %105, i32 0, i32 2
  %107 = load %struct.f_switch*, %struct.f_switch** %106, align 8
  store %struct.f_switch* %107, %struct.f_switch** %12, align 8
  %108 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %109 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %112 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %215

116:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %211, %116
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %120 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %214

123:                                              ; preds = %117
  %124 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %125 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %126, i64 %128
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = icmp ne %struct.TYPE_2__* %130, null
  br i1 %131, label %132, label %155

132:                                              ; preds = %123
  %133 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %134 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %135, i64 %137
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %132
  %144 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %145 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %146, i64 %148
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PASSTHRU, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %156, label %155

155:                                              ; preds = %143, %132, %123
  br label %211

156:                                              ; preds = %143
  %157 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %158 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %157, i32 0, i32 2
  %159 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %159, i64 %161
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load %struct.link*, %struct.link** %164, align 8
  store %struct.link* %165, %struct.link** %9, align 8
  %166 = load %struct.link*, %struct.link** %9, align 8
  %167 = getelementptr inbounds %struct.link, %struct.link* %166, i32 0, i32 0
  %168 = load %struct.endpoint*, %struct.endpoint** %167, align 8
  %169 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %168, i64 0
  %170 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %173 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %156
  %177 = load %struct.link*, %struct.link** %9, align 8
  %178 = getelementptr inbounds %struct.link, %struct.link* %177, i32 0, i32 0
  %179 = load %struct.endpoint*, %struct.endpoint** %178, align 8
  %180 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %179, i64 1
  store %struct.endpoint* %180, %struct.endpoint** %10, align 8
  br label %186

181:                                              ; preds = %156
  %182 = load %struct.link*, %struct.link** %9, align 8
  %183 = getelementptr inbounds %struct.link, %struct.link* %182, i32 0, i32 0
  %184 = load %struct.endpoint*, %struct.endpoint** %183, align 8
  %185 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %184, i64 0
  store %struct.endpoint* %185, %struct.endpoint** %10, align 8
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.endpoint*, %struct.endpoint** %10, align 8
  %188 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @PASSTHRU, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = load %struct.endpoint*, %struct.endpoint** %10, align 8
  %194 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %193, i32 0, i32 2
  %195 = load %struct.f_switch*, %struct.f_switch** %194, align 8
  %196 = icmp ne %struct.f_switch* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %192, %186
  br label %211

198:                                              ; preds = %192
  %199 = load %struct.endpoint*, %struct.endpoint** %10, align 8
  %200 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %199, i32 0, i32 2
  %201 = load %struct.f_switch*, %struct.f_switch** %200, align 8
  store %struct.f_switch* %201, %struct.f_switch** %11, align 8
  %202 = load %struct.f_switch*, %struct.f_switch** %11, align 8
  %203 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %206 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %219

210:                                              ; preds = %198
  br label %211

211:                                              ; preds = %210, %197, %155
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %117

214:                                              ; preds = %117
  br label %215

215:                                              ; preds = %214, %115, %103, %61
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %23

218:                                              ; preds = %23
  store %struct.f_switch* null, %struct.f_switch** %12, align 8
  br label %219

219:                                              ; preds = %218, %209, %21
  %220 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  ret %struct.f_switch* %220
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

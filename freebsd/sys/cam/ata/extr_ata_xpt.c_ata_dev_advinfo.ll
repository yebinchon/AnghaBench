; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_dev_advinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_dev_advinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.ccb_dev_advinfo }
%struct.ccb_dev_advinfo = type { i32, i32, i32*, i32, i32 }
%struct.cam_ed = type { i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.cam_ed* }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CDAI_FLAG_STORE = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@AC_ADVINFO_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @ata_dev_advinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dev_advinfo(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca %struct.ccb_dev_advinfo*, align 8
  %5 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %2, align 8
  %6 = load %union.ccb*, %union.ccb** %2, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @xpt_path_assert(%struct.TYPE_5__* %9, i32 %10)
  %12 = load i32, i32* @CAM_REQ_INVALID, align 4
  %13 = load %union.ccb*, %union.ccb** %2, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = load %union.ccb*, %union.ccb** %2, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  store %struct.cam_ed* %21, %struct.cam_ed** %3, align 8
  %22 = load %union.ccb*, %union.ccb** %2, align 8
  %23 = bitcast %union.ccb* %22 to %struct.ccb_dev_advinfo*
  store %struct.ccb_dev_advinfo* %23, %struct.ccb_dev_advinfo** %4, align 8
  %24 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %207 [
    i32 129, label %27
    i32 128, label %70
    i32 130, label %113
  ]

27:                                               ; preds = %1
  %28 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %231

35:                                               ; preds = %27
  %36 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %37 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %40 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %42 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %208

46:                                               ; preds = %35
  %47 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %48 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %54 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %59 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %46
  %62 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %63 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %66 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @memcpy(i32* %64, i32* %67, i32 %68)
  br label %208

70:                                               ; preds = %1
  %71 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %72 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %231

78:                                               ; preds = %70
  %79 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %80 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %83 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %85 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %208

89:                                               ; preds = %78
  %90 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %91 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %5, align 4
  %93 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %94 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %97 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %102 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %89
  %105 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %106 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %109 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @memcpy(i32* %107, i32* %110, i32 %111)
  br label %208

113:                                              ; preds = %1
  %114 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %115 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %171

120:                                              ; preds = %113
  %121 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %122 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %127 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @M_CAMXPT, align 4
  %130 = call i32 @free(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %120
  %132 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %133 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %136 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %138 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %208

142:                                              ; preds = %131
  %143 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %144 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @M_CAMXPT, align 4
  %147 = load i32, i32* @M_NOWAIT, align 4
  %148 = call i32* @malloc(i32 %145, i32 %146, i32 %147)
  %149 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %150 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %149, i32 0, i32 0
  store i32* %148, i32** %150, align 8
  %151 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %152 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %142
  %156 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %157 = load %union.ccb*, %union.ccb** %2, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_4__*
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 8
  br label %231

160:                                              ; preds = %142
  %161 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %162 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %165 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %168 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @memcpy(i32* %163, i32* %166, i32 %169)
  br label %206

171:                                              ; preds = %113
  %172 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %173 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %176 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %178 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  br label %208

182:                                              ; preds = %171
  %183 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %184 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %5, align 4
  %186 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %187 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %190 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %188, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %182
  %194 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %195 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %193, %182
  %198 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %199 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %202 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = call i32 @memcpy(i32* %200, i32* %203, i32 %204)
  br label %206

206:                                              ; preds = %197, %160
  br label %208

207:                                              ; preds = %1
  br label %231

208:                                              ; preds = %206, %181, %141, %104, %88, %61, %45
  %209 = load i32, i32* @CAM_REQ_CMP, align 4
  %210 = load %union.ccb*, %union.ccb** %2, align 8
  %211 = bitcast %union.ccb* %210 to %struct.TYPE_4__*
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  store i32 %209, i32* %212, align 8
  %213 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %214 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %208
  %220 = load i32, i32* @AC_ADVINFO_CHANGED, align 4
  %221 = load %union.ccb*, %union.ccb** %2, align 8
  %222 = bitcast %union.ccb* %221 to %struct.TYPE_4__*
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %226 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = call i32 @xpt_async(i32 %220, %struct.TYPE_5__* %224, i8* %229)
  br label %231

231:                                              ; preds = %34, %77, %155, %207, %219, %208
  ret void
}

declare dso_local i32 @xpt_path_assert(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_async(i32, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

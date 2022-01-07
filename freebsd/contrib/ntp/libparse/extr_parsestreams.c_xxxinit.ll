; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_xxxinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsestreams.c_xxxinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmodsw = type { i8*, %struct.streamtab* }
%struct.streamtab = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.vddrv = type { %struct.vdlinkage* }
%struct.vdlinkage = type { i32 }
%struct.vdstat = type { i32 }

@fmodsw = external dso_local global [0 x %struct.fmodsw], align 8
@fmodcnt = external dso_local global i32, align 4
@parseinfo = common dso_local global %struct.streamtab zeroinitializer, align 8
@parsesync_vd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FMNAMESZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"vddrinit[%s]: STREAMS module already loaded.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"vddrinit[%s]: no slot free for STREAMS module\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@xxxinit.revision = internal global [4 x i8] c"4.7\00", align 1
@rcsid = common dso_local global i8* null, align 8
@parsebusy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"vddrinit[%s]: STREAMS module has still %d instances active.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"vddrinit[%s]: cannot find entry for STREAMS module\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xxxinit(i32 %0, %struct.vddrv* %1, i32 %2, %struct.vdstat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vddrv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vdstat*, align 8
  %10 = alloca %struct.fmodsw*, align 8
  %11 = alloca %struct.fmodsw*, align 8
  %12 = alloca %struct.fmodsw*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.vddrv* %1, %struct.vddrv** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vdstat* %3, %struct.vdstat** %9, align 8
  store %struct.fmodsw* getelementptr inbounds ([0 x %struct.fmodsw], [0 x %struct.fmodsw]* @fmodsw, i64 0, i64 0), %struct.fmodsw** %10, align 8
  %17 = load i32, i32* @fmodcnt, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [0 x %struct.fmodsw], [0 x %struct.fmodsw]* @fmodsw, i64 0, i64 %18
  store %struct.fmodsw* %19, %struct.fmodsw** %11, align 8
  store %struct.fmodsw* null, %struct.fmodsw** %12, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.streamtab, %struct.streamtab* @parseinfo, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %252 [
    i32 130, label %26
    i32 128, label %209
    i32 129, label %251
  ]

26:                                               ; preds = %4
  %27 = load %struct.vddrv*, %struct.vddrv** %7, align 8
  %28 = getelementptr inbounds %struct.vddrv, %struct.vddrv* %27, i32 0, i32 0
  store %struct.vdlinkage* bitcast (%struct.TYPE_6__* @parsesync_vd to %struct.vdlinkage*), %struct.vdlinkage** %28, align 8
  br label %29

29:                                               ; preds = %64, %26
  %30 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %31 = load %struct.fmodsw*, %struct.fmodsw** %11, align 8
  %32 = icmp ule %struct.fmodsw* %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %35 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i64, i64* @FMNAMESZ, align 8
  %39 = call i32 @Strncmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @EBUSY, align 4
  store i32 %44, i32* %5, align 4
  br label %254

45:                                               ; preds = %33
  %46 = load %struct.fmodsw*, %struct.fmodsw** %12, align 8
  %47 = icmp eq %struct.fmodsw* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %50 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %58 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %57, i32 0, i32 1
  %59 = load %struct.streamtab*, %struct.streamtab** %58, align 8
  %60 = icmp eq %struct.streamtab* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  store %struct.fmodsw* %62, %struct.fmodsw** %12, align 8
  br label %67

63:                                               ; preds = %56, %48, %45
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %66 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %65, i32 1
  store %struct.fmodsw* %66, %struct.fmodsw** %10, align 8
  br label %29

67:                                               ; preds = %61, %29
  %68 = load %struct.fmodsw*, %struct.fmodsw** %12, align 8
  %69 = icmp eq %struct.fmodsw* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @ENOSPC, align 4
  store i32 %73, i32* %5, align 4
  br label %254

74:                                               ; preds = %67
  %75 = load i8*, i8** @rcsid, align 8
  store i8* %75, i8** %14, align 8
  %76 = load %struct.fmodsw*, %struct.fmodsw** %12, align 8
  %77 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* @FMNAMESZ, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @Strncpy(i8* %78, i8* %79, i32 %81)
  %83 = load %struct.fmodsw*, %struct.fmodsw** %12, align 8
  %84 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* @FMNAMESZ, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load %struct.fmodsw*, %struct.fmodsw** %12, align 8
  %89 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %88, i32 0, i32 1
  store %struct.streamtab* @parseinfo, %struct.streamtab** %89, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @xxxinit.revision, i64 0, i64 0), i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 36
  br i1 %93, label %94, label %119

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %107, %94
  %96 = load i8*, i8** %14, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %14, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 32
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i8*, i8** %14, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %14, align 8
  br label %95

110:                                              ; preds = %105
  %111 = load i8*, i8** %14, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %14, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %14, align 8
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118, %74
  %120 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @parsesync_vd, i32 0, i32 0), align 8
  store i8* %120, i8** %16, align 8
  br label %121

121:                                              ; preds = %133, %119
  %122 = load i8*, i8** %16, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 32
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ false, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i8*, i8** %16, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %16, align 8
  br label %121

136:                                              ; preds = %131
  %137 = load i8*, i8** %16, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 32
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i8*, i8** %16, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %16, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i8*, i8** %14, align 8
  store i8* %145, i8** %15, align 8
  br label %146

146:                                              ; preds = %170, %144
  %147 = load i8*, i8** %15, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %146
  %152 = load i8*, i8** %15, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sge i32 %154, 48
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %15, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 57
  br i1 %160, label %166, label %161

161:                                              ; preds = %156, %151
  %162 = load i8*, i8** %15, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 46
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i1 [ true, %156 ], [ %165, %161 ]
  br label %168

168:                                              ; preds = %166, %146
  %169 = phi i1 [ false, %146 ], [ %167, %166 ]
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i8*, i8** %15, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %15, align 8
  br label %146

173:                                              ; preds = %168
  %174 = load i8*, i8** %14, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %208

178:                                              ; preds = %173
  %179 = load i8*, i8** %16, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %208

183:                                              ; preds = %178
  %184 = load i8*, i8** %15, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = icmp ugt i8* %184, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %183
  %188 = load i8*, i8** %16, align 8
  %189 = call i32 @Strlen(i8* %188)
  %190 = sext i32 %189 to i64
  %191 = load i8*, i8** %15, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = icmp sge i64 %190, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %187
  %198 = load i8*, i8** %16, align 8
  %199 = load i8*, i8** %14, align 8
  %200 = load i8*, i8** %15, align 8
  %201 = load i8*, i8** %14, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i32 @Strncpy(i8* %198, i8* %199, i32 %205)
  br label %207

207:                                              ; preds = %197, %187
  br label %208

208:                                              ; preds = %207, %183, %178, %173
  store i32 0, i32* %5, align 4
  br label %254

209:                                              ; preds = %4
  %210 = load i32, i32* @parsebusy, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i8*, i8** %13, align 8
  %214 = load i32, i32* @parsebusy, align 4
  %215 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %213, i32 %214)
  %216 = load i32, i32* @EBUSY, align 4
  store i32 %216, i32* %5, align 4
  br label %254

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %239, %217
  %219 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %220 = load %struct.fmodsw*, %struct.fmodsw** %11, align 8
  %221 = icmp ule %struct.fmodsw* %219, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %218
  %223 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %224 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = load i64, i64* @FMNAMESZ, align 8
  %228 = call i32 @Strncmp(i8* %225, i8* %226, i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %222
  %231 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %232 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  store i8 0, i8* %234, align 1
  %235 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %236 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %235, i32 0, i32 1
  store %struct.streamtab* null, %struct.streamtab** %236, align 8
  %237 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %238 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %237, i32 1
  store %struct.fmodsw* %238, %struct.fmodsw** %10, align 8
  br label %242

239:                                              ; preds = %222
  %240 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %241 = getelementptr inbounds %struct.fmodsw, %struct.fmodsw* %240, i32 1
  store %struct.fmodsw* %241, %struct.fmodsw** %10, align 8
  br label %218

242:                                              ; preds = %230, %218
  %243 = load %struct.fmodsw*, %struct.fmodsw** %10, align 8
  %244 = load %struct.fmodsw*, %struct.fmodsw** %11, align 8
  %245 = icmp ugt %struct.fmodsw* %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i8*, i8** %13, align 8
  %248 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %247)
  %249 = load i32, i32* @ENXIO, align 4
  store i32 %249, i32* %5, align 4
  br label %254

250:                                              ; preds = %242
  store i32 0, i32* %5, align 4
  br label %254

251:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %254

252:                                              ; preds = %4
  %253 = load i32, i32* @EIO, align 4
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %252, %251, %250, %246, %212, %208, %70, %41
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local i32 @Strncmp(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @Strncpy(i8*, i8*, i32) #1

declare dso_local i32 @Strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mseftucviax\00", align 1
@aflag = common dso_local global i32 0, align 4
@mflag = common dso_local global i64 0, align 8
@sflag = common dso_local global i64 0, align 8
@eflag = common dso_local global i64 0, align 8
@fflag = common dso_local global i32 0, align 4
@tflag = common dso_local global i64 0, align 8
@uflag = common dso_local global i32 0, align 4
@cflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@iflag = common dso_local global i64 0, align 8
@xflag = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@adapter_type = common dso_local global i32 0, align 4
@MAXCHAN = common dso_local global i32 0, align 4
@mask = common dso_local global i32* null, align 8
@SERIAL_GETVERSIONSTRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (...) @usage()
  br label %22

22:                                               ; preds = %20, %14, %2
  br label %23

23:                                               ; preds = %62, %59, %56, %53, %48, %45, %40, %37, %34, %31, %28, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  switch i32 %26, label %65 [
    i32 -1, label %27
    i32 97, label %28
    i32 109, label %31
    i32 115, label %34
    i32 101, label %37
    i32 102, label %40
    i32 116, label %45
    i32 117, label %48
    i32 99, label %53
    i32 118, label %56
    i32 105, label %59
    i32 120, label %62
  ]

27:                                               ; preds = %23
  br label %67

28:                                               ; preds = %23
  %29 = load i32, i32* @aflag, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @aflag, align 4
  br label %23

31:                                               ; preds = %23
  %32 = load i64, i64* @mflag, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @mflag, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load i64, i64* @sflag, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @sflag, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load i64, i64* @eflag, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @eflag, align 8
  br label %23

40:                                               ; preds = %23
  %41 = load i64, i64* @eflag, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* @eflag, align 8
  %43 = load i32, i32* @fflag, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @fflag, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i64, i64* @tflag, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* @tflag, align 8
  br label %23

48:                                               ; preds = %23
  %49 = load i64, i64* @tflag, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @tflag, align 8
  %51 = load i32, i32* @uflag, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @uflag, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load i64, i64* @cflag, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @cflag, align 8
  br label %23

56:                                               ; preds = %23
  %57 = load i64, i64* @vflag, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* @vflag, align 8
  br label %23

59:                                               ; preds = %23
  %60 = load i64, i64* @iflag, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @iflag, align 8
  br label %23

62:                                               ; preds = %23
  %63 = load i64, i64* @xflag, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* @xflag, align 8
  br label %23

65:                                               ; preds = %23
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %27
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* @optind, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  %74 = load i64, i64* @optind, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 %74
  store i8** %76, i8*** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %178

79:                                               ; preds = %68
  %80 = call i32 (...) @get_mask()
  store i32 1, i32* %8, align 4
  store i32 0, i32* @adapter_type, align 4
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %174, %79
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MAXCHAN, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %177

85:                                               ; preds = %81
  %86 = load i32*, i32** @mask, align 8
  %87 = load i32, i32* @adapter_type, align 4
  %88 = mul nsw i32 %87, 16
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %89, 8
  %91 = add nsw i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 7
  %97 = shl i32 1, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %173

100:                                              ; preds = %85
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @open_chan_ctl(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i64, i64* @vflag, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SERIAL_GETVERSIONSTRING, align 4
  %108 = bitcast [256 x i8]* %10 to i8**
  %109 = call i64 @ioctl(i32 %106, i32 %107, i8** %108)
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %113 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @close(i32 %114)
  store i32 0, i32* %3, align 4
  br label %299

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %100
  %118 = load i64, i64* @iflag, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @print_chan(i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @print_ifconfig(i32 %123)
  br label %170

125:                                              ; preds = %117
  %126 = load i64, i64* @sflag, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* @xflag, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @print_stats(i32 %132, i32 %133)
  br label %169

135:                                              ; preds = %128
  %136 = load i64, i64* @mflag, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @print_modems(i32 %139, i32 %140)
  br label %168

142:                                              ; preds = %135
  %143 = load i64, i64* @eflag, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @print_e1_stats(i32 %146, i32 %147)
  br label %167

149:                                              ; preds = %142
  %150 = load i64, i64* @tflag, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @print_e3_stats(i32 %153, i32 %154)
  br label %166

156:                                              ; preds = %149
  %157 = load i64, i64* @cflag, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @clear_stats(i32 %160)
  br label %165

162:                                              ; preds = %156
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @print_chan(i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %138
  br label %169

169:                                              ; preds = %168, %131
  br label %170

170:                                              ; preds = %169, %120
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @close(i32 %171)
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %170, %85
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %81

177:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %299

178:                                              ; preds = %68
  %179 = load i8**, i8*** %5, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  %181 = load i8*, i8** %180, align 8
  %182 = load i8**, i8*** %5, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strlen(i8* %184)
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %181, i64 %186
  store i8* %187, i8** %6, align 8
  br label %188

188:                                              ; preds = %208, %178
  %189 = load i8*, i8** %6, align 8
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ugt i8* %189, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %188
  %195 = load i8*, i8** %6, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 -1
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp sge i32 %198, 48
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load i8*, i8** %6, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 -1
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp sle i32 %204, 57
  br label %206

206:                                              ; preds = %200, %194, %188
  %207 = phi i1 [ false, %194 ], [ false, %188 ], [ %205, %200 ]
  br i1 %207, label %208, label %211

208:                                              ; preds = %206
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 -1
  store i8* %210, i8** %6, align 8
  br label %188

211:                                              ; preds = %206
  %212 = load i8*, i8** %6, align 8
  %213 = call i32 @strtol(i8* %212, i32 0, i32 10)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %4, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %4, align 4
  %216 = load i8**, i8*** %5, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i32 1
  store i8** %217, i8*** %5, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @open_chan_ctl(i32 %218)
  store i32 %219, i32* %7, align 4
  %220 = load i64, i64* @vflag, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %211
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @SERIAL_GETVERSIONSTRING, align 4
  %225 = bitcast [256 x i8]* %11 to i8**
  %226 = call i64 @ioctl(i32 %223, i32 %224, i8** %225)
  %227 = icmp sge i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %230 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %228, %222
  br label %232

232:                                              ; preds = %231, %211
  %233 = load i64, i64* @iflag, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @print_chan(i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @print_ifconfig(i32 %238)
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @close(i32 %240)
  store i32 0, i32* %3, align 4
  br label %299

242:                                              ; preds = %232
  %243 = load i64, i64* @sflag, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load i64, i64* @xflag, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245, %242
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @print_stats(i32 %249, i32 1)
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @close(i32 %251)
  store i32 0, i32* %3, align 4
  br label %299

253:                                              ; preds = %245
  %254 = load i64, i64* @mflag, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @print_modems(i32 %257, i32 1)
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @close(i32 %259)
  store i32 0, i32* %3, align 4
  br label %299

261:                                              ; preds = %253
  %262 = load i64, i64* @eflag, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @print_e1_stats(i32 %265, i32 1)
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @close(i32 %267)
  store i32 0, i32* %3, align 4
  br label %299

269:                                              ; preds = %261
  %270 = load i64, i64* @tflag, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load i32, i32* %7, align 4
  %274 = call i32 @print_e3_stats(i32 %273, i32 1)
  %275 = load i32, i32* %7, align 4
  %276 = call i32 @close(i32 %275)
  store i32 0, i32* %3, align 4
  br label %299

277:                                              ; preds = %269
  %278 = load i64, i64* @cflag, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @clear_stats(i32 %281)
  %283 = load i32, i32* %7, align 4
  %284 = call i32 @close(i32 %283)
  store i32 0, i32* %3, align 4
  br label %299

285:                                              ; preds = %277
  %286 = load i32, i32* %4, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %4, align 4
  %291 = load i8**, i8*** %5, align 8
  %292 = call i32 @setup_chan(i32 %289, i32 %290, i8** %291)
  br label %296

293:                                              ; preds = %285
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @print_chan(i32 %294)
  br label %296

296:                                              ; preds = %293, %288
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @close(i32 %297)
  store i32 0, i32* %3, align 4
  br label %299

299:                                              ; preds = %296, %280, %272, %264, %256, %248, %235, %177, %111
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @get_mask(...) #1

declare dso_local i32 @open_chan_ctl(i32) #1

declare dso_local i64 @ioctl(i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @print_chan(i32) #1

declare dso_local i32 @print_ifconfig(i32) #1

declare dso_local i32 @print_stats(i32, i32) #1

declare dso_local i32 @print_modems(i32, i32) #1

declare dso_local i32 @print_e1_stats(i32, i32) #1

declare dso_local i32 @print_e3_stats(i32, i32) #1

declare dso_local i32 @clear_stats(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtol(i8*, i32, i32) #1

declare dso_local i32 @setup_chan(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

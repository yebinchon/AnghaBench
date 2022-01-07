; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_readtape.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_readtape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.s_spcl = type { i64 }

@blkcnt = common dso_local global i32 0, align 4
@byteslide = common dso_local global i64 0, align 8
@numtrec = common dso_local global i32 0, align 4
@tapebuf = common dso_local global i8* null, align 8
@TP_BSIZE = common dso_local global i64 0, align 8
@blksread = common dso_local global i32 0, align 4
@tapeaddr = common dso_local global i32 0, align 4
@ntrec = common dso_local global i64 0, align 8
@mt = common dso_local global i32 0, align 4
@pipein = common dso_local global i64 0, align 8
@pipecmdin = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mid-media short read error.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"partial block read: %ld should be %ld\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Tape read error while \00", align 1
@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"trying to set up tape\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"trying to resynchronize\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"restoring %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"skipping over inode %ju\0A\00", align 1
@yflag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"continuation failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"End-of-tape encountered\0A\00", align 1
@volno = common dso_local global i64 0, align 8
@endoftapemark = common dso_local global i8 0, align 1
@host = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @readtape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readtape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @blkcnt, align 4
  %10 = load i64, i64* @byteslide, align 8
  %11 = icmp ugt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add nsw i32 %9, %12
  %14 = load i32, i32* @numtrec, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = load i8*, i8** @tapebuf, align 8
  %19 = load i32, i32* @blkcnt, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @blkcnt, align 4
  %21 = sext i32 %19 to i64
  %22 = load i64, i64* @TP_BSIZE, align 8
  %23 = mul i64 %21, %22
  %24 = load i64, i64* @byteslide, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds i8, i8* %18, i64 %25
  %27 = load i64, i64* @TP_BSIZE, align 8
  %28 = call i32 @memmove(i8* %17, i8* %26, i64 %27)
  %29 = load i32, i32* @blksread, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @blksread, align 4
  %31 = load i32, i32* @tapeaddr, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @tapeaddr, align 4
  br label %278

33:                                               ; preds = %1
  %34 = load i32, i32* @numtrec, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i8*, i8** @tapebuf, align 8
  %38 = load i64, i64* @TP_BSIZE, align 8
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** @tapebuf, align 8
  %42 = load i32, i32* @numtrec, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @TP_BSIZE, align 8
  %46 = mul i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  %48 = load i64, i64* @TP_BSIZE, align 8
  %49 = call i32 @memmove(i8* %40, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %36, %33
  %51 = load i32, i32* @numtrec, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %65, %50
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @ntrec, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i8*, i8** @tapebuf, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @TP_BSIZE, align 8
  %61 = mul i64 %59, %60
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = bitcast i8* %62 to %struct.s_spcl*
  %64 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %5, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %53

68:                                               ; preds = %53
  %69 = load i32, i32* @numtrec, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* @ntrec, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* @numtrec, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* @ntrec, align 8
  %76 = load i64, i64* @TP_BSIZE, align 8
  %77 = mul i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  store i64 0, i64* %3, align 8
  br label %79

79:                                               ; preds = %144, %74
  %80 = load i32, i32* @mt, align 4
  %81 = load i8*, i8** @tapebuf, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @read(i32 %80, i8* %83, i32 %84)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* @pipein, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %79
  %89 = load i64, i64* @pipecmdin, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @numtrec, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @ntrec, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i64, i64* %5, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @dprintf(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %102 = load i64, i64* @ntrec, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* @numtrec, align 4
  br label %104

104:                                              ; preds = %99, %96, %91, %88, %79
  %105 = load i64, i64* @pipein, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @pipecmdin, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107, %104
  %111 = load i64, i64* %5, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i64, i64* %3, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* %3, align 8
  store i64 %117, i64* %5, align 8
  br label %166

118:                                              ; preds = %113, %110, %107
  %119 = load i64, i64* %5, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %118
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* @ntrec, align 8
  %124 = load i64, i64* @TP_BSIZE, align 8
  %125 = mul i64 %123, %124
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %165

127:                                              ; preds = %121
  %128 = load i64, i64* @pipein, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* @pipecmdin, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %130, %127
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* %3, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %3, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %79

145:                                              ; preds = %133
  %146 = load i64, i64* %3, align 8
  store i64 %146, i64* %5, align 8
  br label %164

147:                                              ; preds = %130
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* @TP_BSIZE, align 8
  %150 = urem i64 %148, %149
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i32, i32* @stdout, align 4
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* @ntrec, align 8
  %156 = load i64, i64* @TP_BSIZE, align 8
  %157 = mul i64 %155, %156
  %158 = call i32 (i32, i8*, ...) @vprintf(i32 %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %154, i64 %157)
  br label %159

159:                                              ; preds = %152, %147
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* @TP_BSIZE, align 8
  %162 = udiv i64 %160, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* @numtrec, align 4
  br label %164

164:                                              ; preds = %159, %145
  br label %165

165:                                              ; preds = %164, %121, %118
  br label %166

166:                                              ; preds = %165, %116
  %167 = load i64, i64* %5, align 8
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %219

169:                                              ; preds = %166
  %170 = load i32, i32* @stderr, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  switch i32 %172, label %173 [
    i32 129, label %176
    i32 128, label %179
    i32 130, label %183
  ]

173:                                              ; preds = %169
  %174 = load i32, i32* @stderr, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %189

176:                                              ; preds = %169
  %177 = load i32, i32* @stderr, align 4
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %189

179:                                              ; preds = %169
  %180 = load i32, i32* @stderr, align 4
  %181 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 8
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %181)
  br label %189

183:                                              ; preds = %169
  %184 = load i32, i32* @stderr, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 2), align 8
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %183, %179, %176, %173
  %190 = load i32, i32* @yflag, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %189
  %193 = call i32 @reply(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  %196 = call i32 @done(i32 1)
  br label %197

197:                                              ; preds = %195, %192, %189
  %198 = load i64, i64* @ntrec, align 8
  %199 = load i64, i64* @TP_BSIZE, align 8
  %200 = mul i64 %198, %199
  store i64 %200, i64* %5, align 8
  %201 = load i8*, i8** @tapebuf, align 8
  %202 = load i64, i64* %5, align 8
  %203 = call i32 @memset(i8* %201, i32 0, i64 %202)
  %204 = load i32, i32* @mt, align 4
  %205 = load i64, i64* %5, align 8
  %206 = load i32, i32* @SEEK_CUR, align 4
  %207 = call i64 @lseek(i32 %204, i64 %205, i32 %206)
  %208 = icmp eq i64 %207, -1
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %197
  %213 = load i32, i32* @stderr, align 4
  %214 = load i32, i32* @errno, align 4
  %215 = call i8* @strerror(i32 %214)
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %215)
  %217 = call i32 @done(i32 1)
  br label %218

218:                                              ; preds = %212, %197
  br label %219

219:                                              ; preds = %218, %166
  %220 = load i64, i64* %5, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %251

222:                                              ; preds = %219
  %223 = load i32, i32* @stdout, align 4
  %224 = call i32 (i32, i8*, ...) @vprintf(i32 %223, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %225 = load i64, i64* @pipein, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %222
  %228 = load i64, i64* @volno, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %4, align 8
  store i64 0, i64* @volno, align 8
  store i32 0, i32* @numtrec, align 4
  %230 = load i64, i64* %4, align 8
  %231 = call i32 @getvol(i64 %230)
  %232 = load i8*, i8** %2, align 8
  call void @readtape(i8* %232)
  br label %278

233:                                              ; preds = %222
  %234 = load i64, i64* %3, align 8
  %235 = load i64, i64* @TP_BSIZE, align 8
  %236 = urem i64 %234, %235
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i64, i64* %3, align 8
  %240 = load i64, i64* @ntrec, align 8
  %241 = load i64, i64* @TP_BSIZE, align 8
  %242 = mul i64 %240, %241
  %243 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %239, i64 %242)
  br label %244

244:                                              ; preds = %238, %233
  %245 = call i32 (...) @terminateinput()
  %246 = load i8*, i8** @tapebuf, align 8
  %247 = load i64, i64* %3, align 8
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  %249 = load i64, i64* @TP_BSIZE, align 8
  %250 = call i32 @memmove(i8* %248, i8* @endoftapemark, i64 %249)
  br label %251

251:                                              ; preds = %244, %219
  %252 = load i64, i64* %6, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 0, i32* @blkcnt, align 4
  br label %261

255:                                              ; preds = %251
  %256 = load i64, i64* %6, align 8
  %257 = load i32, i32* @blkcnt, align 4
  %258 = sext i32 %257 to i64
  %259 = sub nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* @blkcnt, align 4
  br label %261

261:                                              ; preds = %255, %254
  %262 = load i8*, i8** %2, align 8
  %263 = load i8*, i8** @tapebuf, align 8
  %264 = load i32, i32* @blkcnt, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* @blkcnt, align 4
  %266 = sext i32 %264 to i64
  %267 = load i64, i64* @TP_BSIZE, align 8
  %268 = mul i64 %266, %267
  %269 = load i64, i64* @byteslide, align 8
  %270 = add i64 %268, %269
  %271 = getelementptr inbounds i8, i8* %263, i64 %270
  %272 = load i64, i64* @TP_BSIZE, align 8
  %273 = call i32 @memmove(i8* %262, i8* %271, i64 %272)
  %274 = load i32, i32* @blksread, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* @blksread, align 4
  %276 = load i32, i32* @tapeaddr, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* @tapeaddr, align 4
  br label %278

278:                                              ; preds = %261, %227, %16
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @dprintf(i32, i8*) #1

declare dso_local i32 @vprintf(i32, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @reply(i8*) #1

declare dso_local i32 @done(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @getvol(i64) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i32 @terminateinput(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

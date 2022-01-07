; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_h_tools.c_kqueue_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_h_tools.c_kqueue_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i64, i32 }
%struct.timespec = type { i32, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@EVFILT_VNODE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i32 0, align 4
@NOTE_DELETE = common dso_local global i32 0, align 4
@NOTE_EXTEND = common dso_local global i32 0, align 4
@NOTE_LINK = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i32 0, align 4
@NOTE_REVOKE = common dso_local global i32 0, align 4
@NOTE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@stdin = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s returned %d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s - NOTE_ATTRIB\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s - NOTE_DELETE\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s - NOTE_EXTEND\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s - NOTE_LINK\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%s - NOTE_RENAME\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s - NOTE_REVOKE\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%s - NOTE_WRITE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kqueue_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.kevent*, align 8
  %11 = alloca %struct.kevent, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %285

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 16, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.kevent* @malloc(i32 %28)
  store %struct.kevent* %29, %struct.kevent** %10, align 8
  %30 = load %struct.kevent*, %struct.kevent** %10, align 8
  %31 = icmp eq %struct.kevent* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  %34 = call i32 (i32, i8*, ...) @errx(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %20
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %84, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %36
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = call i32 @open(i8* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i8*, ...) @err(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %50, %40
  %59 = load %struct.kevent*, %struct.kevent** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.kevent, %struct.kevent* %59, i64 %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @EVFILT_VNODE, align 4
  %65 = load i32, i32* @EV_ADD, align 4
  %66 = load i32, i32* @EV_ENABLE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @EV_ONESHOT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @NOTE_ATTRIB, align 4
  %71 = load i32, i32* @NOTE_DELETE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NOTE_EXTEND, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @NOTE_LINK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @NOTE_RENAME, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NOTE_REVOKE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @NOTE_WRITE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @EV_SET(%struct.kevent* %62, i32 %63, i32 %64, i32 %69, i32 %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %58
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %36

87:                                               ; preds = %36
  %88 = call i32 (...) @kqueue()
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @EXIT_FAILURE, align 4
  %93 = call i32 (i32, i8*, ...) @err(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %264, %94
  %96 = load i32, i32* @stdin, align 4
  %97 = call i8* @fgetln(i32 %96, i64* %9)
  store i8* %97, i8** %6, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %265

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 100000, i32* %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.kevent*, %struct.kevent** %10, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @kevent(i32 %102, %struct.kevent* %103, i32 %104, %struct.kevent* %11, i32 1, %struct.timespec* %15)
  %106 = load i64, i64* %9, align 8
  %107 = icmp ugt i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %9, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 10
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = sub i64 %120, 1
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @system(i8* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @EXIT_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %99
  %129 = load i32, i32* %13, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 (i32, i8*, ...) @errx(i32 %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %99
  br label %134

134:                                              ; preds = %261, %133
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.kevent*, %struct.kevent** %10, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @kevent(i32 %135, %struct.kevent* %136, i32 %137, %struct.kevent* %11, i32 1, %struct.timespec* %15)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32, i32* @EXIT_FAILURE, align 4
  %143 = call i32 (i32, i8*, ...) @err(i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %260

144:                                              ; preds = %134
  %145 = load i32, i32* %14, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %259

147:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %164, %147
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.kevent*, %struct.kevent** %10, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.kevent, %struct.kevent* %155, i64 %157
  %159 = getelementptr inbounds %struct.kevent, %struct.kevent* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %154, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %167

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %148

167:                                              ; preds = %162, %148
  %168 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @NOTE_ATTRIB, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load i8**, i8*** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %173, %167
  %181 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @NOTE_DELETE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load i8**, i8*** %5, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %186, %180
  %194 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @NOTE_EXTEND, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load i8**, i8*** %5, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %199, %193
  %207 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @NOTE_LINK, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = load i8**, i8*** %5, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %212, %206
  %220 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @NOTE_RENAME, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %225, %219
  %233 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @NOTE_REVOKE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load i8**, i8*** %5, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %238, %232
  %246 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @NOTE_WRITE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = load i8**, i8*** %5, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %256)
  br label %258

258:                                              ; preds = %251, %245
  br label %259

259:                                              ; preds = %258, %144
  br label %260

260:                                              ; preds = %259, %141
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %14, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %134, label %264

264:                                              ; preds = %261
  br label %95

265:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  br label %266

266:                                              ; preds = %278, %265
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %4, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %266
  %271 = load %struct.kevent*, %struct.kevent** %10, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.kevent, %struct.kevent* %271, i64 %273
  %275 = getelementptr inbounds %struct.kevent, %struct.kevent* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @close(i64 %276)
  br label %278

278:                                              ; preds = %270
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %266

281:                                              ; preds = %266
  %282 = load %struct.kevent*, %struct.kevent** %10, align 8
  %283 = call i32 @free(%struct.kevent* %282)
  %284 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %281, %18
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local %struct.kevent* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i8* @fgetln(i32, i64*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(%struct.kevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_parseline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_parseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"grow\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"lv\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"printconfig\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"raid5\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"resetconfig\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"saveconfig\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"setstate\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"stripe\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"checkparity\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"rebuildparity\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"unknown command '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %315

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @gvinum_create(i32 %15, i8** %16)
  br label %315

18:                                               ; preds = %8
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24, %18
  %31 = call i32 @exit(i32 0) #3
  unreachable

32:                                               ; preds = %24
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = load i8**, i8*** %4, align 8
  %41 = call i32 @gvinum_attach(i32 %39, i8** %40)
  br label %313

42:                                               ; preds = %32
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = load i8**, i8*** %4, align 8
  %51 = call i32 @gvinum_detach(i32 %49, i8** %50)
  br label %312

52:                                               ; preds = %42
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = load i8**, i8*** %4, align 8
  %61 = call i32 @gvinum_concat(i32 %59, i8** %60)
  br label %311

62:                                               ; preds = %52
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %3, align 4
  %70 = load i8**, i8*** %4, align 8
  %71 = call i32 @gvinum_grow(i32 %69, i8** %70)
  br label %310

72:                                               ; preds = %62
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = call i32 (...) @gvinum_help()
  br label %309

80:                                               ; preds = %72
  %81 = load i8**, i8*** %4, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i8**, i8*** %4, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* %3, align 4
  %94 = load i8**, i8*** %4, align 8
  %95 = call i32 @gvinum_list(i32 %93, i8** %94)
  br label %308

96:                                               ; preds = %86
  %97 = load i8**, i8*** %4, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %3, align 4
  %104 = load i8**, i8*** %4, align 8
  %105 = call i32 @gvinum_list(i32 %103, i8** %104)
  br label %307

106:                                              ; preds = %96
  %107 = load i8**, i8*** %4, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %3, align 4
  %114 = load i8**, i8*** %4, align 8
  %115 = call i32 @gvinum_list(i32 %113, i8** %114)
  br label %306

116:                                              ; preds = %106
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %3, align 4
  %124 = load i8**, i8*** %4, align 8
  %125 = call i32 @gvinum_list(i32 %123, i8** %124)
  br label %305

126:                                              ; preds = %116
  %127 = load i8**, i8*** %4, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %3, align 4
  %134 = load i8**, i8*** %4, align 8
  %135 = call i32 @gvinum_list(i32 %133, i8** %134)
  br label %304

136:                                              ; preds = %126
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %3, align 4
  %144 = load i8**, i8*** %4, align 8
  %145 = call i32 @gvinum_mirror(i32 %143, i8** %144)
  br label %303

146:                                              ; preds = %136
  %147 = load i8**, i8*** %4, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %3, align 4
  %154 = load i8**, i8*** %4, align 8
  %155 = call i32 @gvinum_move(i32 %153, i8** %154)
  br label %302

156:                                              ; preds = %146
  %157 = load i8**, i8*** %4, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %3, align 4
  %164 = load i8**, i8*** %4, align 8
  %165 = call i32 @gvinum_move(i32 %163, i8** %164)
  br label %301

166:                                              ; preds = %156
  %167 = load i8**, i8*** %4, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %3, align 4
  %174 = load i8**, i8*** %4, align 8
  %175 = call i32 @gvinum_printconfig(i32 %173, i8** %174)
  br label %300

176:                                              ; preds = %166
  %177 = load i8**, i8*** %4, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %176
  %183 = load i32, i32* %3, align 4
  %184 = load i8**, i8*** %4, align 8
  %185 = call i32 @gvinum_raid5(i32 %183, i8** %184)
  br label %299

186:                                              ; preds = %176
  %187 = load i8**, i8*** %4, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %186
  %193 = load i32, i32* %3, align 4
  %194 = load i8**, i8*** %4, align 8
  %195 = call i32 @gvinum_rename(i32 %193, i8** %194)
  br label %298

196:                                              ; preds = %186
  %197 = load i8**, i8*** %4, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %3, align 4
  %204 = load i8**, i8*** %4, align 8
  %205 = call i32 @gvinum_resetconfig(i32 %203, i8** %204)
  br label %297

206:                                              ; preds = %196
  %207 = load i8**, i8*** %4, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strcmp(i8* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %206
  %213 = load i32, i32* %3, align 4
  %214 = load i8**, i8*** %4, align 8
  %215 = call i32 @gvinum_rm(i32 %213, i8** %214)
  br label %296

216:                                              ; preds = %206
  %217 = load i8**, i8*** %4, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %216
  %223 = call i32 (...) @gvinum_saveconfig()
  br label %295

224:                                              ; preds = %216
  %225 = load i8**, i8*** %4, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %224
  %231 = load i32, i32* %3, align 4
  %232 = load i8**, i8*** %4, align 8
  %233 = call i32 @gvinum_setstate(i32 %231, i8** %232)
  br label %294

234:                                              ; preds = %224
  %235 = load i8**, i8*** %4, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %234
  %241 = load i32, i32* %3, align 4
  %242 = load i8**, i8*** %4, align 8
  %243 = call i32 @gvinum_start(i32 %241, i8** %242)
  br label %293

244:                                              ; preds = %234
  %245 = load i8**, i8*** %4, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %3, align 4
  %252 = load i8**, i8*** %4, align 8
  %253 = call i32 @gvinum_stop(i32 %251, i8** %252)
  br label %292

254:                                              ; preds = %244
  %255 = load i8**, i8*** %4, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @strcmp(i8* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %254
  %261 = load i32, i32* %3, align 4
  %262 = load i8**, i8*** %4, align 8
  %263 = call i32 @gvinum_stripe(i32 %261, i8** %262)
  br label %291

264:                                              ; preds = %254
  %265 = load i8**, i8*** %4, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 0
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @strcmp(i8* %267, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %264
  %271 = load i32, i32* %3, align 4
  %272 = load i8**, i8*** %4, align 8
  %273 = call i32 @gvinum_parityop(i32 %271, i8** %272, i32 0)
  br label %290

274:                                              ; preds = %264
  %275 = load i8**, i8*** %4, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @strcmp(i8* %277, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %274
  %281 = load i32, i32* %3, align 4
  %282 = load i8**, i8*** %4, align 8
  %283 = call i32 @gvinum_parityop(i32 %281, i8** %282, i32 1)
  br label %289

284:                                              ; preds = %274
  %285 = load i8**, i8*** %4, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* %287)
  br label %289

289:                                              ; preds = %284, %280
  br label %290

290:                                              ; preds = %289, %270
  br label %291

291:                                              ; preds = %290, %260
  br label %292

292:                                              ; preds = %291, %250
  br label %293

293:                                              ; preds = %292, %240
  br label %294

294:                                              ; preds = %293, %230
  br label %295

295:                                              ; preds = %294, %222
  br label %296

296:                                              ; preds = %295, %212
  br label %297

297:                                              ; preds = %296, %202
  br label %298

298:                                              ; preds = %297, %192
  br label %299

299:                                              ; preds = %298, %182
  br label %300

300:                                              ; preds = %299, %172
  br label %301

301:                                              ; preds = %300, %162
  br label %302

302:                                              ; preds = %301, %152
  br label %303

303:                                              ; preds = %302, %142
  br label %304

304:                                              ; preds = %303, %132
  br label %305

305:                                              ; preds = %304, %122
  br label %306

306:                                              ; preds = %305, %112
  br label %307

307:                                              ; preds = %306, %102
  br label %308

308:                                              ; preds = %307, %92
  br label %309

309:                                              ; preds = %308, %78
  br label %310

310:                                              ; preds = %309, %68
  br label %311

311:                                              ; preds = %310, %58
  br label %312

312:                                              ; preds = %311, %48
  br label %313

313:                                              ; preds = %312, %38
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %7, %314, %14
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @gvinum_create(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @gvinum_attach(i32, i8**) #1

declare dso_local i32 @gvinum_detach(i32, i8**) #1

declare dso_local i32 @gvinum_concat(i32, i8**) #1

declare dso_local i32 @gvinum_grow(i32, i8**) #1

declare dso_local i32 @gvinum_help(...) #1

declare dso_local i32 @gvinum_list(i32, i8**) #1

declare dso_local i32 @gvinum_mirror(i32, i8**) #1

declare dso_local i32 @gvinum_move(i32, i8**) #1

declare dso_local i32 @gvinum_printconfig(i32, i8**) #1

declare dso_local i32 @gvinum_raid5(i32, i8**) #1

declare dso_local i32 @gvinum_rename(i32, i8**) #1

declare dso_local i32 @gvinum_resetconfig(i32, i8**) #1

declare dso_local i32 @gvinum_rm(i32, i8**) #1

declare dso_local i32 @gvinum_saveconfig(...) #1

declare dso_local i32 @gvinum_setstate(i32, i8**) #1

declare dso_local i32 @gvinum_start(i32, i8**) #1

declare dso_local i32 @gvinum_stop(i32, i8**) #1

declare dso_local i32 @gvinum_stripe(i32, i8**) #1

declare dso_local i32 @gvinum_parityop(i32, i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

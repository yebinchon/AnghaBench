; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_do_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_do_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@do_section.buflen = internal global i32 2048, align 4
@.str = private unnamed_addr constant [30 x i8] c";; memory allocation failure\0A\00", align 1
@ns_f_opcode = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c";; ns_parserr: %s\0A\00", align 1
@RES_PRF_HEAD1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c";; %s SECTION:\0A\00", align 1
@ns_s_qd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c";;\09%s, type = %s, class = %s\0A\00", align 1
@ns_s_ar = common dso_local global i64 0, align 8
@ns_t_opt = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"; EDNS: version: %u, udp=%u, flags=%04x\0A\00", align 1
@NS_OPT_NSID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"; NSID: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"; NSID\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"; OPT=%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"; OPT=%u: \00", align 1
@ENOSPC = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c";; ns_sprintrr: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64, i32, i32*)* @do_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_section(%struct.TYPE_3__* %0, i32* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %326

36:                                               ; preds = %32, %5
  %37 = load i32, i32* @do_section.buflen, align 4
  %38 = call i8* @malloc(i32 %37)
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %326

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ns_f_opcode, align 4
  %48 = call i64 @ns_msg_getflag(i32 %46, i32 %47)
  store i64 %48, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %317, %304, %44
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @ns_parserr(i32* %50, i64 %51, i32 %52, i32* %16)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ENODEV, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* @errno, align 8
  %62 = call i8* @strerror(i64 %61)
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %81

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RES_PRF_HEAD1, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @putc(i8 signext 10, i32* %78)
  br label %80

80:                                               ; preds = %77, %70, %67, %64
  br label %81

81:                                               ; preds = %80, %59
  br label %320

82:                                               ; preds = %49
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RES_PRF_HEAD1, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32*, i32** %10, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %15, align 8
  %99 = call i8* @p_section(i64 %97, i64 %98)
  %100 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %95, %88, %85, %82
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @ns_s_qd, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i8* @ns_rr_name(i32 %107)
  %109 = load i32, i32* %16, align 4
  %110 = call i64 @ns_rr_type(i32 %109)
  %111 = call i8* @p_type(i64 %110)
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @ns_rr_class(i32 %112)
  %114 = call i8* @p_class(i32 %113)
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %108, i8* %111, i8* %114)
  br label %317

116:                                              ; preds = %101
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @ns_s_ar, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %278

120:                                              ; preds = %116
  %121 = load i32, i32* %16, align 4
  %122 = call i64 @ns_rr_type(i32 %121)
  %123 = load i64, i64* @ns_t_opt, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %278

125:                                              ; preds = %120
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @ns_rr_rdlen(i32 %126)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @ns_rr_ttl(i32 %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %20, align 4
  %132 = ashr i32 %131, 16
  %133 = and i32 %132, 255
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @ns_rr_class(i32 %134)
  %136 = load i32, i32* %20, align 4
  %137 = and i32 %136, 65535
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %272, %125
  %140 = load i32, i32* %19, align 4
  %141 = icmp sge i32 %140, 4
  br i1 %141, label %142, label %277

142:                                              ; preds = %139
  %143 = load i32, i32* %16, align 4
  %144 = call i32* @ns_rr_rdata(i32 %143)
  store i32* %144, i32** %21, align 8
  %145 = load i32, i32* %17, align 4
  %146 = load i32*, i32** %21, align 8
  %147 = call i32 @GETSHORT(i32 %145, i32* %146)
  %148 = load i32, i32* %18, align 4
  %149 = load i32*, i32** %21, align 8
  %150 = call i32 @GETSHORT(i32 %148, i32* %149)
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @NS_OPT_NSID, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %213

154:                                              ; preds = %142
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %155)
  %157 = load i32, i32* %18, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %160)
  br label %212

162:                                              ; preds = %154
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %163)
  store i32 0, i32* %22, align 4
  br label %165

165:                                              ; preds = %177, %162
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* %18, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load i32*, i32** %10, align 8
  %171 = load i32*, i32** %21, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %22, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %22, align 4
  br label %165

180:                                              ; preds = %165
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %181)
  store i32 0, i32* %22, align 4
  br label %183

183:                                              ; preds = %206, %180
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %18, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %183
  %188 = load i32*, i32** %10, align 8
  %189 = load i32*, i32** %21, align 8
  %190 = load i32, i32* %22, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @isprint(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %187
  %197 = load i32*, i32** %21, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  br label %203

202:                                              ; preds = %187
  br label %203

203:                                              ; preds = %202, %196
  %204 = phi i32 [ %201, %196 ], [ 46, %202 ]
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %22, align 4
  br label %183

209:                                              ; preds = %183
  %210 = load i32*, i32** %10, align 8
  %211 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %210)
  br label %212

212:                                              ; preds = %209, %159
  br label %272

213:                                              ; preds = %142
  %214 = load i32, i32* %18, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %17, align 4
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %218)
  br label %271

220:                                              ; preds = %213
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %17, align 4
  %223 = call i32 (i32*, i8*, ...) @fprintf(i32* %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %222)
  store i32 0, i32* %22, align 4
  br label %224

224:                                              ; preds = %236, %220
  %225 = load i32, i32* %22, align 4
  %226 = load i32, i32* %18, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %224
  %229 = load i32*, i32** %10, align 8
  %230 = load i32*, i32** %21, align 8
  %231 = load i32, i32* %22, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i32*, i8*, ...) @fprintf(i32* %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %228
  %237 = load i32, i32* %22, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %22, align 4
  br label %224

239:                                              ; preds = %224
  %240 = load i32*, i32** %10, align 8
  %241 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %240)
  store i32 0, i32* %22, align 4
  br label %242

242:                                              ; preds = %265, %239
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %18, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %268

246:                                              ; preds = %242
  %247 = load i32*, i32** %10, align 8
  %248 = load i32*, i32** %21, align 8
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @isprint(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %246
  %256 = load i32*, i32** %21, align 8
  %257 = load i32, i32* %22, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  br label %262

261:                                              ; preds = %246
  br label %262

262:                                              ; preds = %261, %255
  %263 = phi i32 [ %260, %255 ], [ 46, %261 ]
  %264 = call i32 (i32*, i8*, ...) @fprintf(i32* %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %22, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %22, align 4
  br label %242

268:                                              ; preds = %242
  %269 = load i32*, i32** %10, align 8
  %270 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %269)
  br label %271

271:                                              ; preds = %268, %216
  br label %272

272:                                              ; preds = %271, %212
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 4, %273
  %275 = load i32, i32* %19, align 4
  %276 = sub nsw i32 %275, %274
  store i32 %276, i32* %19, align 4
  br label %139

277:                                              ; preds = %139
  br label %316

278:                                              ; preds = %120, %116
  %279 = load i32*, i32** %7, align 8
  %280 = load i8*, i8** %14, align 8
  %281 = load i32, i32* @do_section.buflen, align 4
  %282 = call i32 @ns_sprintrr(i32* %279, i32* %16, i32* null, i32* null, i8* %280, i32 %281)
  store i32 %282, i32* %11, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %310

285:                                              ; preds = %278
  %286 = load i64, i64* @errno, align 8
  %287 = load i64, i64* @ENOSPC, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %305

289:                                              ; preds = %285
  %290 = load i8*, i8** %14, align 8
  %291 = call i32 @free(i8* %290)
  store i8* null, i8** %14, align 8
  %292 = load i32, i32* @do_section.buflen, align 4
  %293 = icmp slt i32 %292, 131072
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = load i32, i32* @do_section.buflen, align 4
  %296 = add nsw i32 %295, 1024
  store i32 %296, i32* @do_section.buflen, align 4
  %297 = call i8* @malloc(i32 %296)
  store i8* %297, i8** %14, align 8
  br label %298

298:                                              ; preds = %294, %289
  %299 = load i8*, i8** %14, align 8
  %300 = icmp eq i8* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32*, i32** %10, align 8
  %303 = call i32 (i32*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %326

304:                                              ; preds = %298
  br label %49

305:                                              ; preds = %285
  %306 = load i32*, i32** %10, align 8
  %307 = load i64, i64* @errno, align 8
  %308 = call i8* @strerror(i64 %307)
  %309 = call i32 (i32*, i8*, ...) @fprintf(i32* %306, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %308)
  br label %320

310:                                              ; preds = %278
  %311 = load i8*, i8** %14, align 8
  %312 = load i32*, i32** %10, align 8
  %313 = call i32 @fputs(i8* %311, i32* %312)
  %314 = load i32*, i32** %10, align 8
  %315 = call i32 @fputc(i8 signext 10, i32* %314)
  br label %316

316:                                              ; preds = %310, %277
  br label %317

317:                                              ; preds = %316, %105
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %13, align 4
  br label %49

320:                                              ; preds = %305, %81
  %321 = load i8*, i8** %14, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i8*, i8** %14, align 8
  %325 = call i32 @free(i8* %324)
  br label %326

326:                                              ; preds = %35, %41, %301, %323, %320
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ns_msg_getflag(i32, i32) #1

declare dso_local i64 @ns_parserr(i32*, i64, i32, i32*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i8* @p_section(i64, i64) #1

declare dso_local i8* @ns_rr_name(i32) #1

declare dso_local i8* @p_type(i64) #1

declare dso_local i64 @ns_rr_type(i32) #1

declare dso_local i8* @p_class(i32) #1

declare dso_local i32 @ns_rr_class(i32) #1

declare dso_local i32 @ns_rr_rdlen(i32) #1

declare dso_local i32 @ns_rr_ttl(i32) #1

declare dso_local i32* @ns_rr_rdata(i32) #1

declare dso_local i32 @GETSHORT(i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @ns_sprintrr(i32*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

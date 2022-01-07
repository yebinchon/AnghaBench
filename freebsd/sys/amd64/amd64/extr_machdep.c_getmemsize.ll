; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_getmemsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_getmemsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*)*, i32 (i32, i32*, i32*)* }
%struct.msgbuf = type { i32 }

@PHYS_AVAIL_ENTRIES = common dso_local global i32 0, align 4
@kernphys = common dso_local global i64 0, align 8
@init_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@basemem = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Memory map doesn't contain a basemem segment, faking it\00", align 1
@Maxmem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hw.physmem\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"hw.memtest.tests\00", align 1
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Physical memory use set to %ldK\0A\00", align 1
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"hw.physmem.start\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@phys_avail = common dso_local global i32* null, align 8
@dump_avail = common dso_local global i32* null, align 8
@CMAP1 = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"dcons.addr\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"dcons.size\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Testing system memory\00", align 1
@CADDR1 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PAGES_PER_GB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PG_V = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_NC_PWT = common dso_local global i32 0, align 4
@PG_NC_PCD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"Too many holes in the physical address space, giving up\0A\00", align 1
@physmem = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@msgbufsize = common dso_local global i32 0, align 4
@msgbufp = common dso_local global %struct.msgbuf* null, align 8
@MAXMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @getmemsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getmemsize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %24 = load i32, i32* @PHYS_AVAIL_ENTRIES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i64, i64* @kernphys, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @trunc_page(i32 %30)
  %32 = call i32 @vm_phys_add_seg(i32 %29, i32 %31)
  %33 = mul nuw i64 4, %25
  %34 = trunc i64 %33 to i32
  %35 = call i32 @bzero(i32* %27, i32 %34)
  store i32 0, i32* %6, align 4
  %36 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_ops, i32 0, i32 1), align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 %36(i32 %37, i32* %27, i32* %6)
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %6, align 4
  store i32 0, i32* @basemem, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %59, %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %27, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 655360
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %27, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 1024
  store i32 %57, i32* @basemem, align 4
  br label %62

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %5, align 4
  br label %41

62:                                               ; preds = %51, %41
  %63 = load i32, i32* @basemem, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @basemem, align 4
  %67 = icmp sgt i32 %66, 640
  br i1 %67, label %68, label %74

68:                                               ; preds = %65, %62
  %69 = load i64, i64* @bootverbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  store i32 640, i32* @basemem, align 4
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %27, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @atop(i32 %79)
  store i32 %80, i32* @Maxmem, align 4
  %81 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @atop(i32 %84)
  store i32 %85, i32* @Maxmem, align 4
  br label %86

86:                                               ; preds = %83, %74
  store i32 0, i32* %14, align 4
  %87 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  %88 = load i32, i32* @Maxmem, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %27, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @atop(i32 %93)
  %95 = icmp sgt i32 %88, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %27, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @atop(i32 %101)
  store i32 %102, i32* @Maxmem, align 4
  br label %103

103:                                              ; preds = %96, %86
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %27, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @atop(i32 %108)
  %110 = load i32, i32* @Maxmem, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %103
  %113 = load i32, i32* @boothowto, align 4
  %114 = load i32, i32* @RB_VERBOSE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @Maxmem, align 4
  %119 = mul nsw i32 %118, 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %112, %103
  %122 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_ops, i32 0, i32 0), align 8
  %123 = icmp ne i32 (i32*, i32*)* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_ops, i32 0, i32 0), align 8
  %126 = call i32 %125(i32* %27, i32* %6)
  br label %127

127:                                              ; preds = %124, %121
  %128 = call i32 @pmap_bootstrap(i32* %4)
  %129 = load i64, i64* @vm_guest, align 8
  %130 = load i64, i64* @VM_GUEST_NO, align 8
  %131 = icmp sgt i64 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 16
  %134 = load i32, i32* @PAGE_SHIFT, align 4
  %135 = shl i32 %133, %134
  store i32 %135, i32* %12, align 4
  %136 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %12)
  %137 = getelementptr inbounds i32, i32* %27, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %127
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %146, i32* %147, align 16
  br label %165

148:                                              ; preds = %141
  %149 = load i32, i32* %12, align 4
  %150 = getelementptr inbounds i32, i32* %27, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %149, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = getelementptr inbounds i32, i32* %27, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PAGE_SIZE, align 4
  %157 = sub nsw i32 %155, %156
  %158 = call i32 @round_page(i32 %157)
  %159 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %158, i32* %159, align 16
  br label %164

160:                                              ; preds = %148
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @round_page(i32 %161)
  %163 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %162, i32* %163, align 16
  br label %164

164:                                              ; preds = %160, %153
  br label %165

165:                                              ; preds = %164, %145
  br label %166

166:                                              ; preds = %165, %127
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %167 = getelementptr inbounds i32, i32* %27, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = load i32*, i32** @phys_avail, align 8
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = getelementptr inbounds i32, i32* %27, i64 0
  %175 = load i32, i32* %174, align 16
  %176 = load i32*, i32** @phys_avail, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  %180 = getelementptr inbounds i32, i32* %27, i64 0
  %181 = load i32, i32* %180, align 16
  %182 = load i32*, i32** @dump_avail, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i32*, i32** @CMAP1, align 8
  store i32* %186, i32** %15, align 8
  %187 = call i64 @getenv_quad(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %16)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %166
  %190 = call i64 @getenv_quad(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %17)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %166
  store i32 0, i32* %16, align 4
  br label %193

193:                                              ; preds = %192, %189
  store i32 0, i32* %18, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %193
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %415, %198
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %418

203:                                              ; preds = %199
  %204 = load i32, i32* @Maxmem, align 4
  %205 = call i32 @ptoa(i32 %204)
  store i32 %205, i32* %19, align 4
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %27, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %19, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %203
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %27, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @trunc_page(i32 %218)
  store i32 %219, i32* %19, align 4
  br label %220

220:                                              ; preds = %213, %203
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %27, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @round_page(i32 %224)
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %410, %220
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %19, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %414

230:                                              ; preds = %226
  %231 = load i64, i64* @CADDR1, align 8
  %232 = inttoptr i64 %231 to i32*
  store i32* %232, i32** %23, align 8
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i64, i64* @kernphys, align 8
  %236 = trunc i64 %235 to i32
  %237 = icmp sge i32 %234, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %230
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %4, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %365

243:                                              ; preds = %238, %230
  %244 = load i32, i32* %16, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %243
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %16, align 4
  %249 = call i32 @trunc_page(i32 %248)
  %250 = icmp sge i32 %247, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %246
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %253, %254
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  br label %365

258:                                              ; preds = %251, %246, %243
  %259 = load i32, i32* @FALSE, align 4
  store i32 %259, i32* %21, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %316

263:                                              ; preds = %258
  %264 = load i32, i32* %18, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %18, align 4
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* @PAGES_PER_GB, align 4
  %268 = srem i32 %266, %267
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %263
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* @PG_V, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @PG_RW, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @PG_NC_PWT, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @PG_NC_PCD, align 4
  %281 = or i32 %279, %280
  %282 = load i32*, i32** %15, align 8
  store i32 %281, i32* %282, align 4
  %283 = call i32 (...) @invltlb()
  %284 = load i32*, i32** %23, align 8
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %20, align 4
  %286 = load i32*, i32** %23, align 8
  store volatile i32 -1431655766, i32* %286, align 4
  %287 = load i32*, i32** %23, align 8
  %288 = load volatile i32, i32* %287, align 4
  %289 = icmp ne i32 %288, -1431655766
  br i1 %289, label %290, label %292

290:                                              ; preds = %272
  %291 = load i32, i32* @TRUE, align 4
  store i32 %291, i32* %21, align 4
  br label %292

292:                                              ; preds = %290, %272
  %293 = load i32*, i32** %23, align 8
  store volatile i32 1431655765, i32* %293, align 4
  %294 = load i32*, i32** %23, align 8
  %295 = load volatile i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 1431655765
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load i32, i32* @TRUE, align 4
  store i32 %298, i32* %21, align 4
  br label %299

299:                                              ; preds = %297, %292
  %300 = load i32*, i32** %23, align 8
  store volatile i32 -1, i32* %300, align 4
  %301 = load i32*, i32** %23, align 8
  %302 = load volatile i32, i32* %301, align 4
  %303 = icmp ne i32 %302, -1
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = load i32, i32* @TRUE, align 4
  store i32 %305, i32* %21, align 4
  br label %306

306:                                              ; preds = %304, %299
  %307 = load i32*, i32** %23, align 8
  store volatile i32 0, i32* %307, align 4
  %308 = load i32*, i32** %23, align 8
  %309 = load volatile i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = load i32, i32* @TRUE, align 4
  store i32 %312, i32* %21, align 4
  br label %313

313:                                              ; preds = %311, %306
  %314 = load i32, i32* %20, align 4
  %315 = load i32*, i32** %23, align 8
  store i32 %314, i32* %315, align 4
  br label %316

316:                                              ; preds = %313, %262
  %317 = load i32, i32* %21, align 4
  %318 = load i32, i32* @TRUE, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %316
  br label %410

321:                                              ; preds = %316
  %322 = load i32*, i32** @phys_avail, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %9, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %321
  %330 = load i32, i32* @PAGE_SIZE, align 4
  %331 = load i32*, i32** @phys_avail, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, %330
  store i32 %336, i32* %334, align 4
  br label %362

337:                                              ; preds = %321
  %338 = load i32, i32* %7, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %7, align 4
  %340 = load i32, i32* %7, align 4
  %341 = load i32, i32* @PHYS_AVAIL_ENTRIES, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %345 = load i32, i32* %7, align 4
  %346 = add nsw i32 %345, -1
  store i32 %346, i32* %7, align 4
  %347 = load i32, i32* @TRUE, align 4
  store i32 %347, i32* %22, align 4
  br label %365

348:                                              ; preds = %337
  %349 = load i32, i32* %9, align 4
  %350 = load i32*, i32** @phys_avail, align 8
  %351 = load i32, i32* %7, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %7, align 4
  %353 = sext i32 %351 to i64
  %354 = getelementptr inbounds i32, i32* %350, i64 %353
  store i32 %349, i32* %354, align 4
  %355 = load i32, i32* %9, align 4
  %356 = load i32, i32* @PAGE_SIZE, align 4
  %357 = add nsw i32 %355, %356
  %358 = load i32*, i32** @phys_avail, align 8
  %359 = load i32, i32* %7, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 %357, i32* %361, align 4
  br label %362

362:                                              ; preds = %348, %329
  %363 = load i64, i64* @physmem, align 8
  %364 = add nsw i64 %363, 1
  store i64 %364, i64* @physmem, align 8
  br label %365

365:                                              ; preds = %362, %343, %257, %242
  %366 = load i32*, i32** @dump_avail, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %381

373:                                              ; preds = %365
  %374 = load i32, i32* @PAGE_SIZE, align 4
  %375 = load i32*, i32** @dump_avail, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, %374
  store i32 %380, i32* %378, align 4
  br label %404

381:                                              ; preds = %365
  %382 = load i32, i32* %8, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %8, align 4
  %384 = load i32, i32* %8, align 4
  %385 = load i32, i32* @PHYS_AVAIL_ENTRIES, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %381
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* %8, align 4
  br label %405

390:                                              ; preds = %381
  %391 = load i32, i32* %9, align 4
  %392 = load i32*, i32** @dump_avail, align 8
  %393 = load i32, i32* %8, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %8, align 4
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i32, i32* %392, i64 %395
  store i32 %391, i32* %396, align 4
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* @PAGE_SIZE, align 4
  %399 = add nsw i32 %397, %398
  %400 = load i32*, i32** @dump_avail, align 8
  %401 = load i32, i32* %8, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  store i32 %399, i32* %403, align 4
  br label %404

404:                                              ; preds = %390, %373
  br label %405

405:                                              ; preds = %404, %387
  %406 = load i32, i32* %22, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %405
  br label %414

409:                                              ; preds = %405
  br label %410

410:                                              ; preds = %409, %320
  %411 = load i32, i32* @PAGE_SIZE, align 4
  %412 = load i32, i32* %9, align 4
  %413 = add nsw i32 %412, %411
  store i32 %413, i32* %9, align 4
  br label %226

414:                                              ; preds = %408, %226
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %5, align 4
  %417 = add nsw i32 %416, 2
  store i32 %417, i32* %5, align 4
  br label %199

418:                                              ; preds = %199
  %419 = load i32*, i32** %15, align 8
  store i32 0, i32* %419, align 4
  %420 = call i32 (...) @invltlb()
  %421 = load i32, i32* %14, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %418
  %424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %425

425:                                              ; preds = %423, %418
  br label %426

426:                                              ; preds = %444, %425
  %427 = load i32*, i32** @phys_avail, align 8
  %428 = load i32, i32* %7, align 4
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %427, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @PAGE_SIZE, align 4
  %434 = add nsw i32 %432, %433
  %435 = load i32, i32* @msgbufsize, align 4
  %436 = call i32 @round_page(i32 %435)
  %437 = add nsw i32 %434, %436
  %438 = load i32*, i32** @phys_avail, align 8
  %439 = load i32, i32* %7, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = icmp sge i32 %437, %442
  br i1 %443, label %444, label %471

444:                                              ; preds = %426
  %445 = load i32*, i32** @phys_avail, align 8
  %446 = load i32, i32* %7, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = load i32*, i32** @phys_avail, align 8
  %451 = load i32, i32* %7, align 4
  %452 = sub nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %450, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = sub nsw i32 %449, %455
  %457 = call i32 @atop(i32 %456)
  %458 = sext i32 %457 to i64
  %459 = load i64, i64* @physmem, align 8
  %460 = sub nsw i64 %459, %458
  store i64 %460, i64* @physmem, align 8
  %461 = load i32*, i32** @phys_avail, align 8
  %462 = load i32, i32* %7, align 4
  %463 = add nsw i32 %462, -1
  store i32 %463, i32* %7, align 4
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i32, i32* %461, i64 %464
  store i32 0, i32* %465, align 4
  %466 = load i32*, i32** @phys_avail, align 8
  %467 = load i32, i32* %7, align 4
  %468 = add nsw i32 %467, -1
  store i32 %468, i32* %7, align 4
  %469 = sext i32 %467 to i64
  %470 = getelementptr inbounds i32, i32* %466, i64 %469
  store i32 0, i32* %470, align 4
  br label %426

471:                                              ; preds = %426
  %472 = load i32*, i32** @phys_avail, align 8
  %473 = load i32, i32* %7, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @atop(i32 %476)
  store i32 %477, i32* @Maxmem, align 4
  %478 = load i32, i32* @msgbufsize, align 4
  %479 = call i32 @round_page(i32 %478)
  %480 = load i32*, i32** @phys_avail, align 8
  %481 = load i32, i32* %7, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = sub nsw i32 %484, %479
  store i32 %485, i32* %483, align 4
  %486 = load i32*, i32** @phys_avail, align 8
  %487 = load i32, i32* %7, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = call i64 @PHYS_TO_DMAP(i32 %490)
  %492 = inttoptr i64 %491 to %struct.msgbuf*
  store %struct.msgbuf* %492, %struct.msgbuf** @msgbufp, align 8
  %493 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %493)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vm_phys_add_seg(i32, i32) #2

declare dso_local i32 @trunc_page(i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @atop(i32) #2

declare dso_local i64 @TUNABLE_ULONG_FETCH(i8*, i32*) #2

declare dso_local i32 @pmap_bootstrap(i32*) #2

declare dso_local i32 @round_page(i32) #2

declare dso_local i64 @getenv_quad(i8*, i32*) #2

declare dso_local i32 @ptoa(i32) #2

declare dso_local i32 @invltlb(...) #2

declare dso_local i64 @PHYS_TO_DMAP(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_create_pagetables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_create_pagetables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Maxmem = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i32 0, align 4
@ndmpdp = common dso_local global i32 0, align 4
@NPDPEPG = common dso_local global i32 0, align 4
@ndmpdpphys = common dso_local global i32 0, align 4
@NDMPML4E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NDMPML4E limits system to %d GB\0A\00", align 1
@NBPML4 = common dso_local global i32 0, align 4
@NPDEPG = common dso_local global i32 0, align 4
@DMPDPphys = common dso_local global i32 0, align 4
@amd_feature = common dso_local global i32 0, align 4
@AMDID_PAGE1GB = common dso_local global i32 0, align 4
@PDPSHIFT = common dso_local global i64 0, align 8
@brwsection = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@DMPDphys = common dso_local global i32 0, align 4
@dmaplimit = common dso_local global i64 0, align 8
@KPML4phys = common dso_local global i32 0, align 4
@NKPML4E = common dso_local global i32 0, align 4
@KPDPphys = common dso_local global i32 0, align 4
@nkpt = common dso_local global i32 0, align 4
@KPTphys = common dso_local global i32 0, align 4
@KPDphys = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@PDRSHIFT = common dso_local global i32 0, align 4
@KERNend = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@pg_g = common dso_local global i32 0, align 4
@X86_PG_M = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@KPML4I = common dso_local global i32 0, align 4
@KPML4BASE = common dso_local global i32 0, align 4
@KPDPI = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@PML4PML4I = common dso_local global i64 0, align 8
@DMPML4I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @create_pagetables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_pagetables(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %12 = load i32, i32* @Maxmem, align 4
  %13 = call i32 @ptoa(i32 %12)
  %14 = load i32, i32* @NBPDP, align 4
  %15 = call i32 @howmany(i32 %13, i32 %14)
  store i32 %15, i32* @ndmpdp, align 4
  %16 = load i32, i32* @ndmpdp, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 4, i32* @ndmpdp, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @ndmpdp, align 4
  %21 = load i32, i32* @NPDPEPG, align 4
  %22 = call i32 @howmany(i32 %20, i32 %21)
  store i32 %22, i32* @ndmpdpphys, align 4
  %23 = load i32, i32* @ndmpdpphys, align 4
  %24 = load i32, i32* @NDMPML4E, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load i32, i32* @NDMPML4E, align 4
  %28 = mul nsw i32 %27, 512
  %29 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @NDMPML4E, align 4
  %31 = load i32, i32* @NBPML4, align 4
  %32 = mul nsw i32 %30, %31
  %33 = call i32 @atop(i32 %32)
  store i32 %33, i32* @Maxmem, align 4
  %34 = load i32, i32* @NDMPML4E, align 4
  store i32 %34, i32* @ndmpdpphys, align 4
  %35 = load i32, i32* @NDMPML4E, align 4
  %36 = load i32, i32* @NPDEPG, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* @ndmpdp, align 4
  br label %38

38:                                               ; preds = %26, %19
  %39 = load i64*, i64** %2, align 8
  %40 = load i32, i32* @ndmpdpphys, align 4
  %41 = call i8* @allocpages(i64* %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* @DMPDPphys, align 4
  store i32 0, i32* %5, align 4
  %43 = load i32, i32* @amd_feature, align 4
  %44 = load i32, i32* @AMDID_PAGE1GB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %38
  %48 = load i32, i32* @Maxmem, align 4
  %49 = call i32 @ptoa(i32 %48)
  %50 = load i64, i64* @PDPSHIFT, align 8
  %51 = trunc i64 %50 to i32
  %52 = ashr i32 %49, %51
  store i32 %52, i32* %5, align 4
  %53 = load i64, i64* @brwsection, align 8
  %54 = load i64, i64* @KERNBASE, align 8
  %55 = sub nsw i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @NBPDP, align 4
  %58 = call i32 @howmany(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i64*, i64** %2, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @allocpages(i64* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %47, %38
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @ndmpdp, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i64*, i64** %2, align 8
  %69 = load i32, i32* @ndmpdp, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i8* @allocpages(i64* %68, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* @DMPDphys, align 4
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i32, i32* @ndmpdp, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @PDPSHIFT, align 8
  %78 = shl i64 %76, %77
  store i64 %78, i64* @dmaplimit, align 8
  %79 = load i64*, i64** %2, align 8
  %80 = call i8* @allocpages(i64* %79, i32 1)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* @KPML4phys, align 4
  %82 = load i64*, i64** %2, align 8
  %83 = load i32, i32* @NKPML4E, align 4
  %84 = call i8* @allocpages(i64* %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* @KPDPphys, align 4
  %86 = load i64*, i64** %2, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @nkpt_init(i64 %87)
  %89 = load i32, i32* @nkpt, align 4
  %90 = call i32 @NKPDPE(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i64*, i64** %2, align 8
  %92 = load i32, i32* @nkpt, align 4
  %93 = call i8* @allocpages(i64* %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* @KPTphys, align 4
  %95 = load i64*, i64** %2, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i8* @allocpages(i64* %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* @KPDphys, align 4
  %99 = load i32, i32* @KPDphys, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %8, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %119, %74
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @nkpt, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i32, i32* @KPTphys, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @ptoa(i32 %108)
  %110 = add nsw i32 %107, %109
  %111 = load i32, i32* @X86_PG_RW, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @X86_PG_V, align 4
  %114 = or i32 %112, %113
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %102

122:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %152, %122
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @PDRSHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* @KERNend, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %123
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @PDRSHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* @X86_PG_V, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @PG_PS, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @pg_g, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @X86_PG_M, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @X86_PG_A, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @PDRSHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = call i32 @bootaddr_rwx(i32 %145)
  %147 = or i32 %142, %146
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %129
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %123

155:                                              ; preds = %123
  %156 = load i64*, i64** %2, align 8
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @KERNend, align 4
  %159 = call i64 @round_2mpage(i32 %158)
  %160 = icmp slt i64 %157, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* @KERNend, align 4
  %163 = call i64 @round_2mpage(i32 %162)
  %164 = load i64*, i64** %2, align 8
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %155
  %166 = load i32, i32* @KPDPphys, align 4
  %167 = load i32, i32* @KPML4I, align 4
  %168 = load i32, i32* @KPML4BASE, align 4
  %169 = sub nsw i32 %167, %168
  %170 = call i32 @ptoa(i32 %169)
  %171 = add nsw i32 %166, %170
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** %9, align 8
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %193, %165
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %174
  %179 = load i32, i32* @KPDphys, align 4
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @ptoa(i32 %180)
  %182 = add nsw i32 %179, %181
  %183 = load i32, i32* @X86_PG_RW, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @X86_PG_V, align 4
  %186 = or i32 %184, %185
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @KPDPI, align 4
  %190 = add nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  store i32 %186, i32* %192, align 4
  br label %193

193:                                              ; preds = %178
  %194 = load i32, i32* %3, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %3, align 4
  br label %174

196:                                              ; preds = %174
  %197 = load i32, i32* @DMPDphys, align 4
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i32*
  store i32* %199, i32** %8, align 8
  %200 = load i32, i32* @NPDEPG, align 4
  %201 = load i32, i32* %5, align 4
  %202 = mul nsw i32 %200, %201
  store i32 %202, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %239, %196
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @NPDEPG, align 4
  %206 = load i32, i32* @ndmpdp, align 4
  %207 = mul nsw i32 %205, %206
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %244

209:                                              ; preds = %203
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* @PDRSHIFT, align 4
  %213 = zext i32 %212 to i64
  %214 = shl i64 %211, %213
  %215 = trunc i64 %214 to i32
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32, i32* @X86_PG_RW, align 4
  %221 = load i32, i32* @X86_PG_V, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @PG_PS, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @pg_g, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @X86_PG_M, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @X86_PG_A, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @pg_nx, align 4
  %232 = or i32 %230, %231
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %232
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %209
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  %242 = load i32, i32* %4, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %4, align 4
  br label %203

244:                                              ; preds = %203
  %245 = load i32, i32* @DMPDPphys, align 4
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i32*
  store i32* %247, i32** %9, align 8
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %281, %244
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* %5, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %284

252:                                              ; preds = %248
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* @PDPSHIFT, align 8
  %256 = shl i64 %254, %255
  %257 = trunc i64 %256 to i32
  %258 = load i32*, i32** %9, align 8
  %259 = load i32, i32* %3, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %257, i32* %261, align 4
  %262 = load i32, i32* @X86_PG_RW, align 4
  %263 = load i32, i32* @X86_PG_V, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @PG_PS, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @pg_g, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @X86_PG_M, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @X86_PG_A, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @pg_nx, align 4
  %274 = or i32 %272, %273
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %274
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %252
  %282 = load i32, i32* %3, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %3, align 4
  br label %248

284:                                              ; preds = %248
  store i32 0, i32* %4, align 4
  br label %285

285:                                              ; preds = %309, %284
  %286 = load i32, i32* %3, align 4
  %287 = load i32, i32* @ndmpdp, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %314

289:                                              ; preds = %285
  %290 = load i32, i32* @DMPDphys, align 4
  %291 = load i32, i32* %4, align 4
  %292 = call i32 @ptoa(i32 %291)
  %293 = add nsw i32 %290, %292
  %294 = load i32*, i32** %9, align 8
  %295 = load i32, i32* %3, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %293, i32* %297, align 4
  %298 = load i32, i32* @X86_PG_RW, align 4
  %299 = load i32, i32* @X86_PG_V, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @pg_nx, align 4
  %302 = or i32 %300, %301
  %303 = load i32*, i32** %9, align 8
  %304 = load i32, i32* %3, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %302
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %289
  %310 = load i32, i32* %3, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %3, align 4
  %312 = load i32, i32* %4, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %4, align 4
  br label %285

314:                                              ; preds = %285
  %315 = load i32, i32* %5, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %379

317:                                              ; preds = %314
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to i32*
  store i32* %320, i32** %8, align 8
  store i32 0, i32* %3, align 4
  br label %321

321:                                              ; preds = %352, %317
  %322 = load i32, i32* %3, align 4
  %323 = load i32, i32* @NPDEPG, align 4
  %324 = load i32, i32* %7, align 4
  %325 = mul nsw i32 %323, %324
  %326 = icmp slt i32 %322, %325
  br i1 %326, label %327, label %355

327:                                              ; preds = %321
  %328 = load i32, i32* %3, align 4
  %329 = load i32, i32* @PDRSHIFT, align 4
  %330 = shl i32 %328, %329
  %331 = load i32, i32* @X86_PG_V, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @PG_PS, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @pg_g, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @X86_PG_M, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @X86_PG_A, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @pg_nx, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* %3, align 4
  %344 = load i32, i32* @PDRSHIFT, align 4
  %345 = shl i32 %343, %344
  %346 = call i32 @bootaddr_rwx(i32 %345)
  %347 = or i32 %342, %346
  %348 = load i32*, i32** %8, align 8
  %349 = load i32, i32* %3, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  store i32 %347, i32* %351, align 4
  br label %352

352:                                              ; preds = %327
  %353 = load i32, i32* %3, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %3, align 4
  br label %321

355:                                              ; preds = %321
  store i32 0, i32* %3, align 4
  br label %356

356:                                              ; preds = %375, %355
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* %7, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %378

360:                                              ; preds = %356
  %361 = load i32, i32* %11, align 4
  %362 = load i32, i32* %3, align 4
  %363 = call i32 @ptoa(i32 %362)
  %364 = add nsw i32 %361, %363
  %365 = load i32, i32* @X86_PG_RW, align 4
  %366 = or i32 %364, %365
  %367 = load i32, i32* @X86_PG_V, align 4
  %368 = or i32 %366, %367
  %369 = load i32, i32* @pg_nx, align 4
  %370 = or i32 %368, %369
  %371 = load i32*, i32** %9, align 8
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %370, i32* %374, align 4
  br label %375

375:                                              ; preds = %360
  %376 = load i32, i32* %3, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %3, align 4
  br label %356

378:                                              ; preds = %356
  br label %379

379:                                              ; preds = %378, %314
  %380 = load i32, i32* @KPML4phys, align 4
  %381 = sext i32 %380 to i64
  %382 = inttoptr i64 %381 to i32*
  store i32* %382, i32** %10, align 8
  %383 = load i32, i32* @KPML4phys, align 4
  %384 = load i32*, i32** %10, align 8
  %385 = load i64, i64* @PML4PML4I, align 8
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  store i32 %383, i32* %386, align 4
  %387 = load i32, i32* @X86_PG_RW, align 4
  %388 = load i32, i32* @X86_PG_V, align 4
  %389 = or i32 %387, %388
  %390 = load i32, i32* @pg_nx, align 4
  %391 = or i32 %389, %390
  %392 = load i32*, i32** %10, align 8
  %393 = load i64, i64* @PML4PML4I, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %395, %391
  store i32 %396, i32* %394, align 4
  store i32 0, i32* %3, align 4
  br label %397

397:                                              ; preds = %425, %379
  %398 = load i32, i32* %3, align 4
  %399 = load i32, i32* @ndmpdpphys, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %428

401:                                              ; preds = %397
  %402 = load i32, i32* @DMPDPphys, align 4
  %403 = load i32, i32* %3, align 4
  %404 = call i32 @ptoa(i32 %403)
  %405 = add nsw i32 %402, %404
  %406 = load i32*, i32** %10, align 8
  %407 = load i32, i32* @DMPML4I, align 4
  %408 = load i32, i32* %3, align 4
  %409 = add nsw i32 %407, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %406, i64 %410
  store i32 %405, i32* %411, align 4
  %412 = load i32, i32* @X86_PG_RW, align 4
  %413 = load i32, i32* @X86_PG_V, align 4
  %414 = or i32 %412, %413
  %415 = load i32, i32* @pg_nx, align 4
  %416 = or i32 %414, %415
  %417 = load i32*, i32** %10, align 8
  %418 = load i32, i32* @DMPML4I, align 4
  %419 = load i32, i32* %3, align 4
  %420 = add nsw i32 %418, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %417, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %423, %416
  store i32 %424, i32* %422, align 4
  br label %425

425:                                              ; preds = %401
  %426 = load i32, i32* %3, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %3, align 4
  br label %397

428:                                              ; preds = %397
  store i32 0, i32* %3, align 4
  br label %429

429:                                              ; preds = %455, %428
  %430 = load i32, i32* %3, align 4
  %431 = load i32, i32* @NKPML4E, align 4
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %433, label %458

433:                                              ; preds = %429
  %434 = load i32, i32* @KPDPphys, align 4
  %435 = load i32, i32* %3, align 4
  %436 = call i32 @ptoa(i32 %435)
  %437 = add nsw i32 %434, %436
  %438 = load i32*, i32** %10, align 8
  %439 = load i32, i32* @KPML4BASE, align 4
  %440 = load i32, i32* %3, align 4
  %441 = add nsw i32 %439, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %438, i64 %442
  store i32 %437, i32* %443, align 4
  %444 = load i32, i32* @X86_PG_RW, align 4
  %445 = load i32, i32* @X86_PG_V, align 4
  %446 = or i32 %444, %445
  %447 = load i32*, i32** %10, align 8
  %448 = load i32, i32* @KPML4BASE, align 4
  %449 = load i32, i32* %3, align 4
  %450 = add nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %447, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = or i32 %453, %446
  store i32 %454, i32* %452, align 4
  br label %455

455:                                              ; preds = %433
  %456 = load i32, i32* %3, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %3, align 4
  br label %429

458:                                              ; preds = %429
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i8* @allocpages(i64*, i32) #1

declare dso_local i32 @nkpt_init(i64) #1

declare dso_local i32 @NKPDPE(i32) #1

declare dso_local i32 @bootaddr_rwx(i32) #1

declare dso_local i64 @round_2mpage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

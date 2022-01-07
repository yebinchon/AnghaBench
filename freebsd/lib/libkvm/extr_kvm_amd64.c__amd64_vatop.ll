; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_amd64.c__amd64_vatop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_amd64.c__amd64_vatop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { i32* }

@AMD64_PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"_amd64_vatop: bootstrap data not in dump\00", align 1
@AMD64_PAGE_SIZE = common dso_local global i32 0, align 4
@AMD64_PML4SHIFT = common dso_local global i32 0, align 4
@AMD64_NPML4EPG = common dso_local global i32 0, align 4
@AMD64_PG_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"_amd64_vatop: pml4e not valid\00", align 1
@AMD64_PDPSHIFT = common dso_local global i32 0, align 4
@AMD64_NPDPEPG = common dso_local global i32 0, align 4
@AMD64_PG_FRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"_amd64_vatop: pdpe_pa not found\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"_amd64_vatop: read pdpe\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"_amd64_vatop: pdpe not valid\00", align 1
@AMD64_PG_PS = common dso_local global i32 0, align 4
@AMD64_PG_1GB_FRAME = common dso_local global i32 0, align 4
@AMD64_PDPMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"_amd64_vatop: 1GB page address not in dump\00", align 1
@AMD64_NBPDP = common dso_local global i32 0, align 4
@AMD64_PDRSHIFT = common dso_local global i32 0, align 4
@AMD64_NPDEPG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"_amd64_vatop: pde_pa not found\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"_amd64_vatop: read pde\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"_amd64_vatop: pde not valid\00", align 1
@AMD64_PG_PS_FRAME = common dso_local global i32 0, align 4
@AMD64_PDRMASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"_amd64_vatop: 2MB page address not in dump\00", align 1
@AMD64_NBPDR = common dso_local global i32 0, align 4
@AMD64_PAGE_SHIFT = common dso_local global i32 0, align 4
@AMD64_NPTEPG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"_amd64_vatop: pte_pa not found\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"_amd64_vatop: read\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"_amd64_vatop: pte not valid\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"_amd64_vatop: address not in dump\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @_amd64_vatop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_amd64_vatop(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.vmstate*, %struct.vmstate** %25, align 8
  store %struct.vmstate* %26, %struct.vmstate** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AMD64_PAGE_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %31 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %35, i32 %36, i32* %37)
  store i64 %38, i64* %23, align 8
  %39 = load i64, i64* %23, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %42, i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %320

47:                                               ; preds = %34
  %48 = load i32, i32* @AMD64_PAGE_SIZE, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %4, align 4
  br label %324

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @AMD64_PML4SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* @AMD64_NPML4EPG, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %54, %56
  store i32 %57, i32* %17, align 4
  %58 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %59 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le64toh(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @AMD64_PG_V, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %51
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %71, i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %320

76:                                               ; preds = %51
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @AMD64_PDPSHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = load i32, i32* @AMD64_NPDPEPG, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %79, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @AMD64_PG_FRAME, align 4
  %85 = and i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = add i64 %86, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %10, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %92, i32 %93, i32* %22)
  store i64 %94, i64* %23, align 8
  %95 = load i64, i64* %23, align 8
  %96 = icmp ult i64 %95, 4
  br i1 %96, label %97, label %103

97:                                               ; preds = %76
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %98, i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %320

103:                                              ; preds = %76
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %22, align 4
  %108 = call i32 @pread(i32 %106, i32* %14, i32 4, i32 %107)
  %109 = sext i32 %108 to i64
  %110 = icmp ne i64 %109, 4
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @_kvm_syserr(%struct.TYPE_6__* %112, i32 %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %320

117:                                              ; preds = %103
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @le64toh(i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @AMD64_PG_V, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %125, i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %320

130:                                              ; preds = %117
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @AMD64_PG_PS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @AMD64_PG_1GB_FRAME, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @AMD64_PDPMASK, align 4
  %141 = and i32 %139, %140
  %142 = add nsw i32 %138, %141
  store i32 %142, i32* %21, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = load i32, i32* %21, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %143, i32 %144, i32* %145)
  store i64 %146, i64* %23, align 8
  %147 = load i64, i64* %23, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %135
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %150, i32 %153, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %320

155:                                              ; preds = %135
  %156 = load i32, i32* @AMD64_NBPDP, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @AMD64_PDPMASK, align 4
  %159 = and i32 %157, %158
  %160 = sub nsw i32 %156, %159
  store i32 %160, i32* %4, align 4
  br label %324

161:                                              ; preds = %130
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @AMD64_PDRSHIFT, align 4
  %164 = ashr i32 %162, %163
  %165 = load i32, i32* @AMD64_NPDEPG, align 4
  %166 = sub nsw i32 %165, 1
  %167 = and i32 %164, %166
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @AMD64_PG_FRAME, align 4
  %170 = and i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = add i64 %171, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %11, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %177, i32 %178, i32* %22)
  store i64 %179, i64* %23, align 8
  %180 = load i64, i64* %23, align 8
  %181 = icmp ult i64 %180, 4
  br i1 %181, label %182, label %188

182:                                              ; preds = %161
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @_kvm_syserr(%struct.TYPE_6__* %183, i32 %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %320

188:                                              ; preds = %161
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %22, align 4
  %193 = call i32 @pread(i32 %191, i32* %15, i32 4, i32 %192)
  %194 = sext i32 %193 to i64
  %195 = icmp ne i64 %194, 4
  br i1 %195, label %196, label %202

196:                                              ; preds = %188
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @_kvm_syserr(%struct.TYPE_6__* %197, i32 %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %320

202:                                              ; preds = %188
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @le64toh(i32 %203)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @AMD64_PG_V, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %210, i32 %213, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %320

215:                                              ; preds = %202
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* @AMD64_PG_PS, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %246

220:                                              ; preds = %215
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* @AMD64_PG_PS_FRAME, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @AMD64_PDRMASK, align 4
  %226 = and i32 %224, %225
  %227 = add nsw i32 %223, %226
  store i32 %227, i32* %21, align 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %229 = load i32, i32* %21, align 4
  %230 = load i32*, i32** %7, align 8
  %231 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %228, i32 %229, i32* %230)
  store i64 %231, i64* %23, align 8
  %232 = load i64, i64* %23, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %220
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %235, i32 %238, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %320

240:                                              ; preds = %220
  %241 = load i32, i32* @AMD64_NBPDR, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @AMD64_PDRMASK, align 4
  %244 = and i32 %242, %243
  %245 = sub nsw i32 %241, %244
  store i32 %245, i32* %4, align 4
  br label %324

246:                                              ; preds = %215
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @AMD64_PAGE_SHIFT, align 4
  %249 = ashr i32 %247, %248
  %250 = load i32, i32* @AMD64_NPTEPG, align 4
  %251 = sub nsw i32 %250, 1
  %252 = and i32 %249, %251
  store i32 %252, i32* %20, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* @AMD64_PG_FRAME, align 4
  %255 = and i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = load i32, i32* %20, align 4
  %258 = sext i32 %257 to i64
  %259 = mul i64 %258, 4
  %260 = add i64 %256, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %12, align 4
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %263 = load i32, i32* %12, align 4
  %264 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %262, i32 %263, i32* %22)
  store i64 %264, i64* %23, align 8
  %265 = load i64, i64* %23, align 8
  %266 = icmp ult i64 %265, 4
  br i1 %266, label %267, label %273

267:                                              ; preds = %246
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %268, i32 %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %320

273:                                              ; preds = %246
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %22, align 4
  %278 = call i32 @pread(i32 %276, i32* %16, i32 4, i32 %277)
  %279 = sext i32 %278 to i64
  %280 = icmp ne i64 %279, 4
  br i1 %280, label %281, label %287

281:                                              ; preds = %273
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @_kvm_syserr(%struct.TYPE_6__* %282, i32 %285, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %320

287:                                              ; preds = %273
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* @AMD64_PG_V, align 4
  %290 = and i32 %288, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %287
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %293, i32 %296, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %320

298:                                              ; preds = %287
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* @AMD64_PG_FRAME, align 4
  %301 = and i32 %299, %300
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %301, %302
  store i32 %303, i32* %21, align 4
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %305 = load i32, i32* %21, align 4
  %306 = load i32*, i32** %7, align 8
  %307 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %304, i32 %305, i32* %306)
  store i64 %307, i64* %23, align 8
  %308 = load i64, i64* %23, align 8
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %298
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %311, i32 %314, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  br label %320

316:                                              ; preds = %298
  %317 = load i32, i32* @AMD64_PAGE_SIZE, align 4
  %318 = load i32, i32* %9, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* %4, align 4
  br label %324

320:                                              ; preds = %310, %292, %281, %267, %234, %209, %196, %182, %149, %124, %111, %97, %70, %41
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %322 = load i32, i32* %6, align 4
  %323 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %321, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %322)
  store i32 0, i32* %4, align 4
  br label %324

324:                                              ; preds = %320, %316, %240, %155, %47
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i64 @_kvm_pa2off(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @pread(i32, i32*, i32, i32) #1

declare dso_local i32 @_kvm_syserr(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

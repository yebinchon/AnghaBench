; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_provide_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_provide_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (i32, i8*, %struct.TYPE_16__*)*, i8* (i32, i32*, i32)* }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8*, i32, i32, i32*, i64, i32*, i32, i32*, i32, i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i64*, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@dtrace_meta_pid = common dso_local global %struct.TYPE_15__* null, align 8
@DOF_ID_VERSION = common dso_local global i64 0, align 8
@DOF_VERSION_1 = common dso_local global i64 0, align 8
@DOF_SECT_NONE = common dso_local global i32 0, align 4
@DTRACE_FUNCNAMELEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_17__*, i32)* @dtrace_helper_provide_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_helper_provide_one(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_16__, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca %struct.TYPE_14__*, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 %2, i32* %6, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %8, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dtrace_meta_pid, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %24, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %25, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = inttoptr i64 %39 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %14, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = add i64 %45, %53
  %55 = inttoptr i64 %54 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %56, %59
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add i64 %60, %68
  %70 = inttoptr i64 %69 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %10, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = add i64 %75, %83
  %85 = inttoptr i64 %84 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %11, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = add i64 %90, %98
  %100 = inttoptr i64 %99 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %12, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %101, %104
  %106 = inttoptr i64 %105 to i8*
  store i8* %106, i8** %19, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %107, %110
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %16, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %113, %116
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %18, align 8
  store i32* null, i32** %17, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @DOF_ID_VERSION, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DOF_VERSION_1, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %3
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DOF_SECT_NONE, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %134, %137
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = add i64 %138, %146
  %148 = inttoptr i64 %147 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %13, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %149, %152
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %17, align 8
  br label %155

155:                                              ; preds = %133, %127, %3
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %158, %161
  store i32 %162, i32* %21, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %164 = load i8*, i8** %19, align 8
  %165 = call i32 @dtrace_dofprov2hprov(i32* %22, %struct.TYPE_18__* %163, i8* %164)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i8* (i32, i32*, i32)*, i8* (i32, i32*, i32)** %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i8* %168(i32 %171, i32* %22, i32 %172)
  store i8* %173, i8** %26, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %155
  br label %301

176:                                              ; preds = %155
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  store i32 0, i32* %20, align 4
  br label %181

181:                                              ; preds = %298, %176
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %301

185:                                              ; preds = %181
  %186 = load i64, i64* %7, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %186, %189
  %191 = load i32, i32* %20, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = sext i32 %195 to i64
  %197 = add i64 %190, %196
  %198 = inttoptr i64 %197 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %198, %struct.TYPE_19__** %15, align 8
  %199 = load i8*, i8** %19, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %199, i64 %203
  %205 = call i64 @strlen(i8* %204)
  %206 = load i64, i64* @DTRACE_FUNCNAMELEN, align 8
  %207 = icmp sge i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %185
  br label %298

209:                                              ; preds = %185
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 12
  store i32 %212, i32* %213, align 4
  %214 = load i8*, i8** %19, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %214, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i8* %219, i8** %220, align 8
  %221 = load i8*, i8** %19, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %221, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store i8* %226, i8** %227, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 11
  store i32 %230, i32* %231, align 8
  %232 = load i32*, i32** %16, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 10
  store i32* %237, i32** %238, align 8
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 10
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 9
  store i32 %241, i32* %242, align 8
  %243 = load i32*, i32** %17, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %257

245:                                              ; preds = %209
  %246 = load i32*, i32** %17, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 8
  store i32* %251, i32** %252, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 9
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 7
  store i64 %255, i64* %256, align 8
  br label %260

257:                                              ; preds = %209
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 8
  store i32* null, i32** %258, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 7
  store i64 0, i64* %259, align 8
  br label %260

260:                                              ; preds = %257, %245
  %261 = load i32*, i32** %18, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 6
  store i32* %266, i32** %267, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 5
  store i32 %270, i32* %271, align 4
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  store i32 %274, i32* %275, align 8
  %276 = load i8*, i8** %19, align 8
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %276, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  store i8* %281, i8** %282, align 8
  %283 = load i8*, i8** %19, align 8
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %283, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  store i8* %288, i8** %289, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load i32 (i32, i8*, %struct.TYPE_16__*)*, i32 (i32, i8*, %struct.TYPE_16__*)** %291, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i8*, i8** %26, align 8
  %297 = call i32 %292(i32 %295, i8* %296, %struct.TYPE_16__* %23)
  br label %298

298:                                              ; preds = %260, %208
  %299 = load i32, i32* %20, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %20, align 4
  br label %181

301:                                              ; preds = %175, %181
  ret void
}

declare dso_local i32 @dtrace_dofprov2hprov(i32*, %struct.TYPE_18__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

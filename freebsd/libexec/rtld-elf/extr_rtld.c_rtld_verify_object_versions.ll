; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_verify_object_versions.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_verify_object_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_18__*, i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_14__ = type { i64, i32, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32 }

@VER_NEED_CURRENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"%s: Unsupported version %d of Elf_Verneed entry\00", align 1
@VER_DEF_CURRENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: Unsupported version %d of Elf_Verdef entry\00", align 1
@VER_FLG_BASE = common dso_local global i32 0, align 4
@VER_NEED_HIDDEN = common dso_local global i32 0, align 4
@VER_INFO_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @rtld_verify_object_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtld_verify_object_versions(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %363

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %4, align 8
  br label %22

22:                                               ; preds = %78, %16
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %22
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VER_NEED_CURRENT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @_rtld_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %37)
  store i32 -1, i32* %2, align 4
  br label %363

39:                                               ; preds = %25
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = bitcast %struct.TYPE_14__* %40 to i8*
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = bitcast i8* %46 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %7, align 8
  br label %48

48:                                               ; preds = %64, %39
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @VER_NEED_IDX(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %48
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %72

64:                                               ; preds = %58
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = bitcast %struct.TYPE_15__* %65 to i8*
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = bitcast i8* %70 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %7, align 8
  br label %48

72:                                               ; preds = %63
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %86

78:                                               ; preds = %72
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = bitcast %struct.TYPE_14__* %79 to i8*
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = bitcast i8* %84 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %4, align 8
  br label %22

86:                                               ; preds = %77, %22
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %5, align 8
  br label %90

90:                                               ; preds = %123, %86
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = icmp ne %struct.TYPE_16__* %91, null
  br i1 %92, label %93, label %131

93:                                               ; preds = %90
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VER_DEF_CURRENT, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @_rtld_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %102, i64 %105)
  store i32 -1, i32* %2, align 4
  br label %363

107:                                              ; preds = %93
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VER_DEF_IDX(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %115, %107
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %131

123:                                              ; preds = %117
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = bitcast %struct.TYPE_16__* %124 to i8*
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = bitcast i8* %129 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %5, align 8
  br label %90

131:                                              ; preds = %122, %90
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %363

135:                                              ; preds = %131
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call %struct.TYPE_18__* @xcalloc(i32 %142, i32 4)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  store %struct.TYPE_18__* %143, %struct.TYPE_18__** %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %5, align 8
  br label %149

149:                                              ; preds = %222, %135
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = icmp ne %struct.TYPE_16__* %150, null
  br i1 %151, label %152, label %230

152:                                              ; preds = %149
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @VER_FLG_BASE, align 4
  %157 = and i32 %155, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %216

159:                                              ; preds = %152
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @VER_DEF_IDX(i32 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp sle i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %170 = bitcast %struct.TYPE_16__* %169 to i8*
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  %176 = bitcast i8* %175 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %176, %struct.TYPE_17__** %6, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  store i32 %179, i32* %186, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  store i32* %194, i32** %201, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  store i32* null, i32** %208, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %159, %152
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %230

222:                                              ; preds = %216
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = bitcast %struct.TYPE_16__* %223 to i8*
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = bitcast i8* %228 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %229, %struct.TYPE_16__** %5, align 8
  br label %149

230:                                              ; preds = %221, %149
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  store %struct.TYPE_14__* %233, %struct.TYPE_14__** %4, align 8
  br label %234

234:                                              ; preds = %354, %230
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %236 = icmp ne %struct.TYPE_14__* %235, null
  br i1 %236, label %237, label %362

237:                                              ; preds = %234
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  %247 = call %struct.TYPE_13__* @locate_dependency(%struct.TYPE_13__* %238, i32* %246)
  store %struct.TYPE_13__* %247, %struct.TYPE_13__** %8, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %249 = icmp eq %struct.TYPE_13__* %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %237
  store i32 -1, i32* %2, align 4
  br label %363

251:                                              ; preds = %237
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %253 = bitcast %struct.TYPE_14__* %252 to i8*
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %253, i64 %257
  %259 = bitcast i8* %258 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %259, %struct.TYPE_15__** %7, align 8
  br label %260

260:                                              ; preds = %340, %251
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %264 = call i64 @check_object_provided_version(%struct.TYPE_13__* %261, %struct.TYPE_13__* %262, %struct.TYPE_15__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  store i32 -1, i32* %2, align 4
  br label %363

267:                                              ; preds = %260
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @VER_NEED_IDX(i32 %270)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp sle i32 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 3
  store i32 %279, i32* %286, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %289, i64 %293
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %296, align 8
  %298 = load i32, i32* %10, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 2
  store i32* %294, i32** %301, align 8
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %304, i64 %308
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 1
  store i32* %309, i32** %316, align 8
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @VER_NEED_HIDDEN, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %267
  %324 = load i32, i32* @VER_INFO_HIDDEN, align 4
  br label %326

325:                                              ; preds = %267
  br label %326

326:                                              ; preds = %325, %323
  %327 = phi i32 [ %324, %323 ], [ 0, %325 ]
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %329, align 8
  %331 = load i32, i32* %10, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 0
  store i32 %327, i32* %334, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %326
  br label %348

340:                                              ; preds = %326
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %342 = bitcast %struct.TYPE_15__* %341 to i8*
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds i8, i8* %342, i64 %345
  %347 = bitcast i8* %346 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %347, %struct.TYPE_15__** %7, align 8
  br label %260

348:                                              ; preds = %339
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  br label %362

354:                                              ; preds = %348
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %356 = bitcast %struct.TYPE_14__* %355 to i8*
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds i8, i8* %356, i64 %359
  %361 = bitcast i8* %360 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %361, %struct.TYPE_14__** %4, align 8
  br label %234

362:                                              ; preds = %353, %234
  store i32 0, i32* %2, align 4
  br label %363

363:                                              ; preds = %362, %266, %250, %134, %99, %31, %15
  %364 = load i32, i32* %2, align 4
  ret i32 %364
}

declare dso_local i32 @_rtld_error(i8*, i32, i64) #1

declare dso_local i32 @VER_NEED_IDX(i32) #1

declare dso_local i32 @VER_DEF_IDX(i32) #1

declare dso_local %struct.TYPE_18__* @xcalloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @locate_dependency(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @check_object_provided_version(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

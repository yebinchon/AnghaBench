; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_matched_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_matched_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i8*, i32*, i64, %struct.TYPE_12__*, i32, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_17__* }

@SHN_UNDEF = common dso_local global i32 0, align 4
@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: symbol %s references wrong version %d\00", align 1
@SYMLOOK_DLSYM = common dso_local global i32 0, align 4
@VER_NDX_GIVEN = common dso_local global i64 0, align 8
@VER_NDX_HIDDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: object %s should provide version %s for symbol %s\00", align 1
@obj_rtld = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__*, i64)* @matched_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matched_symbol(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i64 %16
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %12, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ELF_ST_TYPE(i32 %28)
  switch i32 %29, label %60 [
    i32 132, label %30
    i32 130, label %30
    i32 129, label %30
    i32 133, label %30
    i32 131, label %30
    i32 128, label %37
  ]

30:                                               ; preds = %4, %4, %4, %4, %4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %279

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %4, %36
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SHN_UNDEF, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %61

44:                                               ; preds = %37
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ELF_ST_TYPE(i32 %54)
  %56 = icmp eq i32 %55, 132
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %61

58:                                               ; preds = %51, %44
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %4, %59
  store i32 0, i32* %5, align 4
  br label %279

61:                                               ; preds = %57, %43
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %61
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i64 @strcmp(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73, %61
  store i32 0, i32* %5, align 4
  br label %279

81:                                               ; preds = %73
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = icmp eq %struct.TYPE_13__* %84, null
  br i1 %85, label %86, label %165

86:                                               ; preds = %81
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %161

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @VER_NDX(i32 %97)
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ugt i64 %99, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %91
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i64, i64* %10, align 8
  %114 = call i32 (i8*, i32, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %107, i8* %112, i64 %113)
  store i32 0, i32* %5, align 4
  br label %279

115:                                              ; preds = %91
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SYMLOOK_DLSYM, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @VER_NDX_GIVEN, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %129, align 8
  store i32 1, i32* %5, align 4
  br label %279

130:                                              ; preds = %122, %115
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @VER_NDX_GIVEN, align 8
  %133 = icmp uge i64 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %130
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @VER_NDX_HIDDEN, align 4
  %142 = and i32 %140, %141
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %134
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = icmp eq %struct.TYPE_17__* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  store %struct.TYPE_17__* %150, %struct.TYPE_17__** %152, align 8
  br label %153

153:                                              ; preds = %149, %144
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %153, %134
  store i32 0, i32* %5, align 4
  br label %279

159:                                              ; preds = %130
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %86
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  store %struct.TYPE_17__* %162, %struct.TYPE_17__** %164, align 8
  store i32 1, i32* %5, align 4
  br label %279

165:                                              ; preds = %81
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %198

170:                                              ; preds = %165
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @object_match_name(%struct.TYPE_16__* %171, i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %170
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @obj_rtld, i32 0, i32 0), align 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = call i32 (i8*, i32, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %180, i8* %185, i8* %190, i8* %195)
  store i32 0, i32* %5, align 4
  br label %279

197:                                              ; preds = %170
  br label %275

198:                                              ; preds = %165
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @VER_NDX(i32 %204)
  store i64 %205, i64* %10, align 8
  %206 = load i64, i64* %10, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ugt i64 %206, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %198
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i64, i64* %9, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  %220 = load i64, i64* %10, align 8
  %221 = call i32 (i8*, i32, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %214, i8* %219, i64 %220)
  store i32 0, i32* %5, align 4
  br label %279

222:                                              ; preds = %198
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i64, i64* %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %229, %234
  br i1 %235, label %251, label %236

236:                                              ; preds = %222
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = load i64, i64* %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @strcmp(i8* %243, i8* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %274

251:                                              ; preds = %236, %222
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @SYMLOOK_DLSYM, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %272, label %258

258:                                              ; preds = %251
  %259 = load i64, i64* %10, align 8
  %260 = load i64, i64* @VER_NDX_GIVEN, align 8
  %261 = icmp uge i64 %259, %260
  br i1 %261, label %272, label %262

262:                                              ; preds = %258
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* %9, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @VER_NDX_HIDDEN, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %262, %258, %251
  store i32 0, i32* %5, align 4
  br label %279

273:                                              ; preds = %262
  br label %274

274:                                              ; preds = %273, %236
  br label %275

275:                                              ; preds = %274, %197
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  store %struct.TYPE_17__* %276, %struct.TYPE_17__** %278, align 8
  store i32 1, i32* %5, align 4
  br label %279

279:                                              ; preds = %275, %272, %211, %179, %161, %158, %126, %104, %80, %60, %35
  %280 = load i32, i32* %5, align 4
  ret i32 %280
}

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @VER_NDX(i32) #1

declare dso_local i32 @_rtld_error(i8*, i32, i8*, ...) #1

declare dso_local i64 @object_match_name(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

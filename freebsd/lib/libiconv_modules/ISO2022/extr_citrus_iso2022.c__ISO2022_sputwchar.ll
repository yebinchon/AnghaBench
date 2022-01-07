; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c__ISO2022_sputwchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c__ISO2022_sputwchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i8 }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@ascii = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@iso88591 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@F_8BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"@AB\00", align 1
@F_NOOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"()*+\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",-./\00", align 1
@F_LS0 = common dso_local global i32 0, align 4
@F_LS1 = common dso_local global i32 0, align 4
@F_LS2 = common dso_local global i32 0, align 4
@F_LS3 = common dso_local global i32 0, align 4
@F_LS1R = common dso_local global i32 0, align 4
@F_LS2R = common dso_local global i32 0, align 4
@F_LS3R = common dso_local global i32 0, align 4
@F_SS2 = common dso_local global i32 0, align 4
@F_SS3 = common dso_local global i32 0, align 4
@F_SS2R = common dso_local global i32 0, align 4
@F_SS3R = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i8*, i64, i8**, %struct.TYPE_12__*, i64*)* @_ISO2022_sputwchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ISO2022_sputwchar(%struct.TYPE_13__* noalias %0, i32 %1, i8* noalias %2, i64 %3, i8** noalias %4, %struct.TYPE_12__* noalias %5, i64* noalias %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8** %4, i8*** %13, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %14, align 8
  store i64* %6, i64** %15, align 8
  %26 = load i32, i32* @MB_LEN_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 255
  %32 = call i64 @isc0(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %7
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 0
  %47 = bitcast %struct.TYPE_14__* %16 to i8*
  %48 = bitcast %struct.TYPE_14__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  br label %51

49:                                               ; preds = %34
  %50 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 bitcast (%struct.TYPE_14__* @ascii to i8*), i64 12, i1 false)
  br label %51

51:                                               ; preds = %49, %42
  br label %125

52:                                               ; preds = %7
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 255
  %55 = call i64 @isc1(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 1
  %70 = bitcast %struct.TYPE_14__* %16 to i8*
  %71 = bitcast %struct.TYPE_14__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 12, i1 false)
  br label %74

72:                                               ; preds = %57
  %73 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 bitcast (%struct.TYPE_14__* @iso88591 to i8*), i64 12, i1 false)
  br label %74

74:                                               ; preds = %72, %65
  br label %124

75:                                               ; preds = %52
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, -256
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 bitcast (%struct.TYPE_14__* @iso88591 to i8*), i64 12, i1 false)
  br label %87

85:                                               ; preds = %79
  %86 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 bitcast (%struct.TYPE_14__* @ascii to i8*), i64 12, i1 false)
  br label %87

87:                                               ; preds = %85, %83
  br label %123

88:                                               ; preds = %75
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %89, 24
  %91 = and i32 %90, 127
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = ashr i32 %93, 16
  %95 = and i32 %94, 128
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %98, 16
  %100 = and i32 %99, 127
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  br label %104

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 32512
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 128, i32 129
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  br label %122

115:                                              ; preds = %104
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, 32512
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 130, i32 131
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %108
  br label %123

123:                                              ; preds = %122, %87
  br label %124

124:                                              ; preds = %123, %74
  br label %125

125:                                              ; preds = %124, %51
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %127 = call i32 @recommendation(%struct.TYPE_13__* %126, %struct.TYPE_14__* %16)
  store i32 %127, i32* %23, align 4
  store i8* %29, i8** %17, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @F_8BIT, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %21, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load i32, i32* %23, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %125
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load i32, i32* %23, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %144
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i8, i8* %163, align 4
  %165 = sext i8 %164 to i32
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  br label %274

170:                                              ; preds = %156, %144, %125
  %171 = load i8*, i8** %17, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %17, align 8
  store i8 27, i8* %171, align 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 130
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 128
  br i1 %179, label %180, label %183

180:                                              ; preds = %176, %170
  %181 = load i8*, i8** %17, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %17, align 8
  store i8 36, i8* %181, align 1
  br label %183

183:                                              ; preds = %180, %176
  %184 = load i32, i32* %23, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 130
  br i1 %189, label %190, label %207

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %195
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @F_NOOLD, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %199
  br label %230

207:                                              ; preds = %199, %195, %190, %186, %183
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 131
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 130
  br i1 %214, label %215, label %222

215:                                              ; preds = %211, %207
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.1, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = load i8*, i8** %17, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %17, align 8
  store i8 %219, i8* %220, align 1
  br label %229

222:                                              ; preds = %211
  %223 = load i32, i32* %23, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.2, i64 0, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = load i8*, i8** %17, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %17, align 8
  store i8 %226, i8* %227, align 1
  br label %229

229:                                              ; preds = %222, %215
  br label %230

230:                                              ; preds = %229, %206
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %17, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %17, align 8
  store i8 %237, i8* %238, align 1
  br label %240

240:                                              ; preds = %234, %230
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = trunc i32 %242 to i8
  %244 = load i8*, i8** %17, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %17, align 8
  store i8 %243, i8* %244, align 1
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  store i32 %247, i32* %254, align 4
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = load i32, i32* %23, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  store i32 %256, i32* %263, align 4
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = trunc i32 %265 to i8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  %270 = load i32, i32* %23, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  store i8 %266, i8* %273, align 4
  br label %274

274:                                              ; preds = %240, %169
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %23, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  br label %505

281:                                              ; preds = %274
  %282 = load i32, i32* %21, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %281
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %23, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  br label %505

291:                                              ; preds = %284, %281
  %292 = load i32, i32* %23, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %291
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @F_LS0, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = load i8*, i8** %17, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %17, align 8
  store i8 15, i8* %302, align 1
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  store i32 0, i32* %305, align 8
  br label %504

306:                                              ; preds = %294, %291
  %307 = load i32, i32* %23, align 4
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %309, label %321

309:                                              ; preds = %306
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @F_LS1, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %309
  %317 = load i8*, i8** %17, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %17, align 8
  store i8 14, i8* %317, align 1
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  store i32 1, i32* %320, align 8
  br label %503

321:                                              ; preds = %309, %306
  %322 = load i32, i32* %23, align 4
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %324, label %338

324:                                              ; preds = %321
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @F_LS2, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %324
  %332 = load i8*, i8** %17, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %17, align 8
  store i8 27, i8* %332, align 1
  %334 = load i8*, i8** %17, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %17, align 8
  store i8 110, i8* %334, align 1
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 0
  store i32 2, i32* %337, align 8
  br label %502

338:                                              ; preds = %324, %321
  %339 = load i32, i32* %23, align 4
  %340 = icmp eq i32 %339, 3
  br i1 %340, label %341, label %355

341:                                              ; preds = %338
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @F_LS3, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %341
  %349 = load i8*, i8** %17, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %17, align 8
  store i8 27, i8* %349, align 1
  %351 = load i8*, i8** %17, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %17, align 8
  store i8 111, i8* %351, align 1
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  store i32 3, i32* %354, align 8
  br label %501

355:                                              ; preds = %341, %338
  %356 = load i32, i32* %21, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %375

358:                                              ; preds = %355
  %359 = load i32, i32* %23, align 4
  %360 = icmp eq i32 %359, 1
  br i1 %360, label %361, label %375

361:                                              ; preds = %358
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @F_LS1R, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %361
  %369 = load i8*, i8** %17, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %17, align 8
  store i8 27, i8* %369, align 1
  %371 = load i8*, i8** %17, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %17, align 8
  store i8 126, i8* %371, align 1
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 1
  store i32 1, i32* %374, align 4
  br label %500

375:                                              ; preds = %361, %358, %355
  %376 = load i32, i32* %21, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %395

378:                                              ; preds = %375
  %379 = load i32, i32* %23, align 4
  %380 = icmp eq i32 %379, 2
  br i1 %380, label %381, label %395

381:                                              ; preds = %378
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @F_LS2R, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %395

388:                                              ; preds = %381
  %389 = load i8*, i8** %17, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %17, align 8
  store i8 27, i8* %389, align 1
  %391 = load i8*, i8** %17, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %17, align 8
  store i8 125, i8* %391, align 1
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 1
  store i32 2, i32* %394, align 4
  br label %499

395:                                              ; preds = %381, %378, %375
  %396 = load i32, i32* %21, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %415

398:                                              ; preds = %395
  %399 = load i32, i32* %23, align 4
  %400 = icmp eq i32 %399, 3
  br i1 %400, label %401, label %415

401:                                              ; preds = %398
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @F_LS3R, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %401
  %409 = load i8*, i8** %17, align 8
  %410 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %410, i8** %17, align 8
  store i8 27, i8* %409, align 1
  %411 = load i8*, i8** %17, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %17, align 8
  store i8 124, i8* %411, align 1
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 1
  store i32 3, i32* %414, align 4
  br label %498

415:                                              ; preds = %401, %398, %395
  %416 = load i32, i32* %23, align 4
  %417 = icmp eq i32 %416, 2
  br i1 %417, label %418, label %432

418:                                              ; preds = %415
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @F_SS2, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %432

425:                                              ; preds = %418
  %426 = load i8*, i8** %17, align 8
  %427 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %427, i8** %17, align 8
  store i8 27, i8* %426, align 1
  %428 = load i8*, i8** %17, align 8
  %429 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %429, i8** %17, align 8
  store i8 78, i8* %428, align 1
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 2
  store i32 2, i32* %431, align 8
  br label %497

432:                                              ; preds = %418, %415
  %433 = load i32, i32* %23, align 4
  %434 = icmp eq i32 %433, 3
  br i1 %434, label %435, label %449

435:                                              ; preds = %432
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @F_SS3, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %435
  %443 = load i8*, i8** %17, align 8
  %444 = getelementptr inbounds i8, i8* %443, i32 1
  store i8* %444, i8** %17, align 8
  store i8 27, i8* %443, align 1
  %445 = load i8*, i8** %17, align 8
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %17, align 8
  store i8 79, i8* %445, align 1
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 2
  store i32 3, i32* %448, align 8
  br label %496

449:                                              ; preds = %435, %432
  %450 = load i32, i32* %21, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %471

452:                                              ; preds = %449
  %453 = load i32, i32* %23, align 4
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %455, label %471

455:                                              ; preds = %452
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @F_SS2R, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %455
  %463 = load i8*, i8** %17, align 8
  %464 = getelementptr inbounds i8, i8* %463, i32 1
  store i8* %464, i8** %17, align 8
  store i8 -114, i8* %463, align 1
  %465 = load i8*, i8** %17, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %17, align 8
  store i8 78, i8* %465, align 1
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 3
  store i32 2, i32* %468, align 4
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 2
  store i32 2, i32* %470, align 8
  br label %495

471:                                              ; preds = %455, %452, %449
  %472 = load i32, i32* %21, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %493

474:                                              ; preds = %471
  %475 = load i32, i32* %23, align 4
  %476 = icmp eq i32 %475, 3
  br i1 %476, label %477, label %493

477:                                              ; preds = %474
  %478 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @F_SS3R, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %493

484:                                              ; preds = %477
  %485 = load i8*, i8** %17, align 8
  %486 = getelementptr inbounds i8, i8* %485, i32 1
  store i8* %486, i8** %17, align 8
  store i8 -113, i8* %485, align 1
  %487 = load i8*, i8** %17, align 8
  %488 = getelementptr inbounds i8, i8* %487, i32 1
  store i8* %488, i8** %17, align 8
  store i8 79, i8* %487, align 1
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 3
  store i32 3, i32* %490, align 4
  %491 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 2
  store i32 3, i32* %492, align 8
  br label %494

493:                                              ; preds = %477, %474, %471
  br label %614

494:                                              ; preds = %484
  br label %495

495:                                              ; preds = %494, %462
  br label %496

496:                                              ; preds = %495, %442
  br label %497

497:                                              ; preds = %496, %425
  br label %498

498:                                              ; preds = %497, %408
  br label %499

499:                                              ; preds = %498, %388
  br label %500

500:                                              ; preds = %499, %368
  br label %501

501:                                              ; preds = %500, %348
  br label %502

502:                                              ; preds = %501, %331
  br label %503

503:                                              ; preds = %502, %316
  br label %504

504:                                              ; preds = %503, %301
  br label %505

505:                                              ; preds = %504, %290, %280
  %506 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %507 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* %23, align 4
  %510 = icmp eq i32 %508, %509
  br i1 %510, label %511, label %512

511:                                              ; preds = %505
  store i8 0, i8* %24, align 1
  br label %544

512:                                              ; preds = %505
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* %23, align 4
  %517 = icmp eq i32 %515, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %512
  store i8 -128, i8* %24, align 1
  br label %543

519:                                              ; preds = %512
  %520 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %521 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* %23, align 4
  %524 = icmp eq i32 %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %519
  store i8 0, i8* %24, align 1
  br label %542

526:                                              ; preds = %519
  %527 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %528 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* @F_8BIT, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %540

533:                                              ; preds = %526
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* %23, align 4
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %533
  store i8 -128, i8* %24, align 1
  br label %541

540:                                              ; preds = %533, %526
  br label %614

541:                                              ; preds = %539
  br label %542

542:                                              ; preds = %541, %525
  br label %543

543:                                              ; preds = %542, %518
  br label %544

544:                                              ; preds = %543, %511
  %545 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %546 = load i32, i32* %545, align 4
  switch i32 %546, label %563 [
    i32 131, label %547
    i32 129, label %547
    i32 130, label %548
    i32 128, label %548
  ]

547:                                              ; preds = %544, %544
  store i32 1, i32* %22, align 4
  br label %563

548:                                              ; preds = %544, %544
  %549 = load i32, i32* %10, align 4
  %550 = and i32 %549, 255
  %551 = call i32 @iscntl(i32 %550)
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %548
  %554 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = call i32 @isthree(i32 %555)
  %557 = icmp ne i32 %556, 0
  %558 = zext i1 %557 to i64
  %559 = select i1 %557, i32 3, i32 2
  br label %561

560:                                              ; preds = %548
  br label %561

561:                                              ; preds = %560, %553
  %562 = phi i32 [ %559, %553 ], [ 1, %560 ]
  store i32 %562, i32* %22, align 4
  br label %563

563:                                              ; preds = %544, %561, %547
  br label %564

564:                                              ; preds = %568, %563
  %565 = load i32, i32* %22, align 4
  %566 = add nsw i32 %565, -1
  store i32 %566, i32* %22, align 4
  %567 = icmp sgt i32 %565, 0
  br i1 %567, label %568, label %580

568:                                              ; preds = %564
  %569 = load i32, i32* %10, align 4
  %570 = load i32, i32* %22, align 4
  %571 = shl i32 %570, 3
  %572 = ashr i32 %569, %571
  %573 = and i32 %572, 127
  %574 = load i8, i8* %24, align 1
  %575 = zext i8 %574 to i32
  %576 = or i32 %573, %575
  %577 = trunc i32 %576 to i8
  %578 = load i8*, i8** %17, align 8
  %579 = getelementptr inbounds i8, i8* %578, i32 1
  store i8* %579, i8** %17, align 8
  store i8 %577, i8* %578, align 1
  br label %564

580:                                              ; preds = %564
  %581 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %582 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %581, i32 0, i32 3
  store i32 -1, i32* %582, align 4
  %583 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 2
  store i32 -1, i32* %584, align 8
  %585 = load i8*, i8** %17, align 8
  %586 = ptrtoint i8* %585 to i64
  %587 = ptrtoint i8* %29 to i64
  %588 = sub i64 %586, %587
  store i64 %588, i64* %20, align 8
  %589 = load i64, i64* %12, align 8
  %590 = load i64, i64* %20, align 8
  %591 = icmp ult i64 %589, %590
  br i1 %591, label %592, label %600

592:                                              ; preds = %580
  %593 = load i8**, i8*** %13, align 8
  %594 = icmp ne i8** %593, null
  br i1 %594, label %595, label %597

595:                                              ; preds = %592
  %596 = load i8**, i8*** %13, align 8
  store i8* null, i8** %596, align 8
  br label %597

597:                                              ; preds = %595, %592
  %598 = load i64*, i64** %15, align 8
  store i64 -1, i64* %598, align 8
  %599 = load i32, i32* @E2BIG, align 4
  store i32 %599, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %617

600:                                              ; preds = %580
  %601 = load i8**, i8*** %13, align 8
  %602 = icmp ne i8** %601, null
  br i1 %602, label %603, label %608

603:                                              ; preds = %600
  %604 = load i8*, i8** %11, align 8
  %605 = load i64, i64* %20, align 8
  %606 = getelementptr inbounds i8, i8* %604, i64 %605
  %607 = load i8**, i8*** %13, align 8
  store i8* %606, i8** %607, align 8
  br label %608

608:                                              ; preds = %603, %600
  %609 = load i8*, i8** %11, align 8
  %610 = load i64, i64* %20, align 8
  %611 = call i32 @memcpy(i8* %609, i8* %29, i64 %610)
  %612 = load i64, i64* %20, align 8
  %613 = load i64*, i64** %15, align 8
  store i64 %612, i64* %613, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %617

614:                                              ; preds = %540, %493
  %615 = load i64*, i64** %15, align 8
  store i64 -1, i64* %615, align 8
  %616 = load i32, i32* @EILSEQ, align 4
  store i32 %616, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %617

617:                                              ; preds = %614, %608, %597
  %618 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %618)
  %619 = load i32, i32* %8, align 4
  ret i32 %619
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isc0(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @isc1(i32) #2

declare dso_local i32 @recommendation(%struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local i64 @strchr(i8*, i32) #2

declare dso_local i32 @iscntl(i32) #2

declare dso_local i32 @isthree(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

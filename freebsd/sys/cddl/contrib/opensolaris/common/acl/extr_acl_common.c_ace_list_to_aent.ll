; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ace_list_to_aent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ace_list_to_aent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, i32, i32, %struct.TYPE_14__, %struct.TYPE_14__, i64, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32 }

@USER_OBJ = common dso_local global i32 0, align 4
@GROUP_OBJ = common dso_local global i32 0, align 4
@OTHER_OBJ = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USER = common dso_local global i32 0, align 4
@GROUP = common dso_local global i32 0, align 4
@ACE_POSIX_SUPPORTED_BITS = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@CLASS_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__**, i32*, i32, i32, i32)* @ace_list_to_aent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_list_to_aent(%struct.TYPE_15__* %0, %struct.TYPE_13__** %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @USER_OBJ, align 4
  %23 = load i32, i32* @GROUP_OBJ, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @OTHER_OBJ, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  %28 = load i32, i32* @USER_OBJ, align 4
  %29 = load i32, i32* @GROUP_OBJ, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @OTHER_OBJ, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %27, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOTSUP, align 4
  store i32 %35, i32* %13, align 4
  br label %294

36:                                               ; preds = %6
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOTSUP, align 4
  store i32 %51, i32* %13, align 4
  br label %294

52:                                               ; preds = %41, %36
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 3, %55
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66, %52
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = bitcast %struct.TYPE_13__** %15 to i8**
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 24
  %79 = trunc i64 %78 to i32
  %80 = call i64 @cacl_malloc(i8** %75, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %13, align 4
  br label %294

84:                                               ; preds = %74
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %14, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @USER_OBJ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %13, align 4
  br label %294

95:                                               ; preds = %84
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 10
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @acevals_to_aent(%struct.TYPE_14__* %97, %struct.TYPE_13__* %98, %struct.TYPE_15__* %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %294

107:                                              ; preds = %95
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 1
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %16, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 9
  %112 = call %struct.TYPE_14__* @avl_first(i32* %111)
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %16, align 8
  br label %113

113:                                              ; preds = %139, %107
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %115 = icmp ne %struct.TYPE_14__* %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %113
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @USER, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %13, align 4
  br label %294

125:                                              ; preds = %116
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @acevals_to_aent(%struct.TYPE_14__* %126, %struct.TYPE_13__* %127, %struct.TYPE_15__* %128, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %294

136:                                              ; preds = %125
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 1
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %14, align 8
  br label %139

139:                                              ; preds = %136
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 9
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %143 = call %struct.TYPE_14__* @AVL_NEXT(i32* %141, %struct.TYPE_14__* %142)
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %16, align 8
  br label %113

144:                                              ; preds = %113
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @GROUP_OBJ, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* @EINVAL, align 4
  store i32 %153, i32* %13, align 4
  br label %294

154:                                              ; preds = %144
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @acevals_to_aent(%struct.TYPE_14__* %156, %struct.TYPE_13__* %157, %struct.TYPE_15__* %158, i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %294

166:                                              ; preds = %154
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 1
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %16, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 8
  %171 = call %struct.TYPE_14__* @avl_first(i32* %170)
  store %struct.TYPE_14__* %171, %struct.TYPE_14__** %16, align 8
  br label %172

172:                                              ; preds = %198, %166
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %174 = icmp ne %struct.TYPE_14__* %173, null
  br i1 %174, label %175, label %203

175:                                              ; preds = %172
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @GROUP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %175
  %183 = load i32, i32* @EINVAL, align 4
  store i32 %183, i32* %13, align 4
  br label %294

184:                                              ; preds = %175
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @acevals_to_aent(%struct.TYPE_14__* %185, %struct.TYPE_13__* %186, %struct.TYPE_15__* %187, i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %294

195:                                              ; preds = %184
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 1
  store %struct.TYPE_13__* %197, %struct.TYPE_13__** %14, align 8
  br label %198

198:                                              ; preds = %195
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %202 = call %struct.TYPE_14__* @AVL_NEXT(i32* %200, %struct.TYPE_14__* %201)
  store %struct.TYPE_14__* %202, %struct.TYPE_14__** %16, align 8
  br label %172

203:                                              ; preds = %172
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %265, label %213

213:                                              ; preds = %208, %203
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 7
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %213
  %219 = load i32, i32* @ACE_POSIX_SUPPORTED_BITS, align 4
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %224 = load i32, i32* %18, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %18, align 4
  br label %226

226:                                              ; preds = %222, %218
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %18, align 4
  %231 = xor i32 %229, %230
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @ace_mask_to_mode(i32 %231, i32* %233, i32 %234)
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %226
  br label %294

239:                                              ; preds = %226
  br label %253

240:                                              ; preds = %213
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @ace_mask_to_mode(i32 %244, i32* %246, i32 %247)
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %240
  br label %294

252:                                              ; preds = %240
  br label %253

253:                                              ; preds = %252, %239
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  store i64 0, i64* %255, align 8
  %256 = load i32, i32* @CLASS_OBJ, align 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %256, %259
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 1
  store %struct.TYPE_13__* %264, %struct.TYPE_13__** %14, align 8
  br label %265

265:                                              ; preds = %253, %208
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @OTHER_OBJ, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %265
  %274 = load i32, i32* @EINVAL, align 4
  store i32 %274, i32* %13, align 4
  br label %294

275:                                              ; preds = %265
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 5
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %12, align 4
  %283 = call i32 @acevals_to_aent(%struct.TYPE_14__* %277, %struct.TYPE_13__* %278, %struct.TYPE_15__* %279, i32 %280, i32 %281, i32 %282)
  store i32 %283, i32* %13, align 4
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %275
  br label %294

287:                                              ; preds = %275
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 1
  store %struct.TYPE_13__* %289, %struct.TYPE_13__** %14, align 8
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %291 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  store %struct.TYPE_13__* %290, %struct.TYPE_13__** %291, align 8
  %292 = load i32, i32* %17, align 4
  %293 = load i32*, i32** %9, align 8
  store i32 %292, i32* %293, align 4
  br label %294

294:                                              ; preds = %287, %286, %273, %251, %238, %194, %182, %165, %152, %135, %123, %106, %93, %82, %50, %34
  %295 = load i32, i32* %13, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %299 = icmp ne %struct.TYPE_13__* %298, null
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %302 = load i32, i32* %17, align 4
  %303 = sext i32 %302 to i64
  %304 = mul i64 %303, 24
  %305 = trunc i64 %304 to i32
  %306 = call i32 @cacl_free(%struct.TYPE_13__* %301, i32 %305)
  br label %307

307:                                              ; preds = %300, %297
  br label %308

308:                                              ; preds = %307, %294
  %309 = load i32, i32* %13, align 4
  ret i32 %309
}

declare dso_local i64 @cacl_malloc(i8**, i32) #1

declare dso_local i32 @acevals_to_aent(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @avl_first(i32*) #1

declare dso_local %struct.TYPE_14__* @AVL_NEXT(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ace_mask_to_mode(i32, i32*, i32) #1

declare dso_local i32 @cacl_free(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

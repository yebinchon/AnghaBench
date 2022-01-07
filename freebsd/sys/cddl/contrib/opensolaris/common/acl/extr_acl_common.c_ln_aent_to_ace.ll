; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ln_aent_to_ace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ln_aent_to_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i8*, i8*, i32 }

@cmp2acls = common dso_local global i32 0, align 4
@CLASS_OBJ = common dso_local global i32 0, align 4
@USER = common dso_local global i32 0, align 4
@GROUP = common dso_local global i32 0, align 4
@GROUP_OBJ = common dso_local global i32 0, align 4
@ACE_ACCESS_DENIED_ACE_TYPE = common dso_local global i32 0, align 4
@ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@ACE_GROUP = common dso_local global i32 0, align 4
@ACL_DEFAULT = common dso_local global i32 0, align 4
@ACE_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@ACE_FILE_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_DIRECTORY_INHERIT_ACE = common dso_local global i32 0, align 4
@USER_OBJ = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@OTHER_OBJ = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, %struct.TYPE_10__**, i32*, i32)* @ln_aent_to_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ln_aent_to_ace(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_10__** %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i32*, align 8
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
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ln_aent_preprocess(%struct.TYPE_9__* %23, i32 %24, i32* %22, i32* %12, i32* %13, i32* %14, i32* %15)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %385

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %22, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = ptrtoint %struct.TYPE_9__* %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @cmp2acls, align 4
  %50 = call i32 @ksort(i32 %47, i32 %48, i32 16, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = bitcast %struct.TYPE_10__** %21 to i8**
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 32
  %56 = trunc i64 %55 to i32
  %57 = call i64 @cacl_malloc(i8** %52, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %385

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %20, align 8
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %377, %60
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %380

66:                                               ; preds = %62
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CLASS_OBJ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %377

77:                                               ; preds = %66
  %78 = load i32, i32* %22, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %182

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @USER, align 4
  %88 = load i32, i32* @GROUP, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @GROUP_OBJ, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %86, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %182

94:                                               ; preds = %80
  %95 = load i32, i32* @ACE_ACCESS_DENIED_ACE_TYPE, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GROUP_OBJ, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %94
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %111, align 8
  %112 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %113 = load i32, i32* @ACE_GROUP, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %153

119:                                              ; preds = %94
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @USER, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %119
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %152

138:                                              ; preds = %119
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %138, %129
  br label %153

153:                                              ; preds = %152, %109
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ACL_DEFAULT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %165 = load i32, i32* @ACE_FILE_INHERIT_ACE, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @ACE_DIRECTORY_INHERIT_ACE, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %163, %153
  %174 = load i32, i32* %12, align 4
  %175 = xor i32 %174, 7
  %176 = load i32, i32* %10, align 4
  %177 = call i8* @mode_to_ace_access(i32 %175, i32 %176, i32 0, i32 0)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 1
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %20, align 8
  br label %182

182:                                              ; preds = %173, %80, %77
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @USER_OBJ, align 4
  %197 = and i32 %195, %196
  %198 = call i8* @mode_to_ace_access(i32 %188, i32 %189, i32 %197, i32 1)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @ACL_DEFAULT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %182
  %211 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %212 = load i32, i32* @ACE_FILE_INHERIT_ACE, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @ACE_DIRECTORY_INHERIT_ACE, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %210, %182
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %222 = load i32, i32* %17, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @USER_OBJ, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %220
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %232, align 8
  %233 = load i32, i32* @ACE_OWNER, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i64 1
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @B_TRUE, align 4
  %243 = call i32 @ace_make_deny(%struct.TYPE_10__* %238, %struct.TYPE_10__* %240, i32 %241, i32 %242)
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 2
  store %struct.TYPE_10__* %245, %struct.TYPE_10__** %20, align 8
  br label %376

246:                                              ; preds = %220
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @USER, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %246
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i64 1
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* @B_FALSE, align 4
  %270 = call i32 @ace_make_deny(%struct.TYPE_10__* %265, %struct.TYPE_10__* %267, i32 %268, i32 %269)
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i64 2
  store %struct.TYPE_10__* %272, %struct.TYPE_10__** %20, align 8
  br label %375

273:                                              ; preds = %246
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %275 = load i32, i32* %17, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @GROUP_OBJ, align 4
  %281 = load i32, i32* @GROUP, align 4
  %282 = or i32 %280, %281
  %283 = and i32 %279, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %345

285:                                              ; preds = %273
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @GROUP_OBJ, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %285
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %297, align 8
  %298 = load i32, i32* @ACE_GROUP, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %312

303:                                              ; preds = %285
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %305 = load i32, i32* %17, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  store i8* %309, i8** %311, align 8
  br label %312

312:                                              ; preds = %303, %295
  %313 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* %14, align 4
  %319 = mul nsw i32 2, %318
  %320 = sub nsw i32 %319, 1
  %321 = load i32, i32* %18, align 4
  %322 = sub nsw i32 %320, %321
  store i32 %322, i32* %19, align 4
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %325 = load i32, i32* %19, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i64 %326
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* @B_FALSE, align 4
  %330 = call i32 @ace_make_deny(%struct.TYPE_10__* %323, %struct.TYPE_10__* %327, i32 %328, i32 %329)
  %331 = load i32, i32* %18, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %18, align 4
  %333 = load i32, i32* %14, align 4
  %334 = icmp sge i32 %332, %333
  br i1 %334, label %335, label %341

335:                                              ; preds = %312
  %336 = load i32, i32* %14, align 4
  %337 = add nsw i32 %336, 1
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i64 %339
  store %struct.TYPE_10__* %340, %struct.TYPE_10__** %20, align 8
  br label %344

341:                                              ; preds = %312
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i64 1
  store %struct.TYPE_10__* %343, %struct.TYPE_10__** %20, align 8
  br label %344

344:                                              ; preds = %341, %335
  br label %374

345:                                              ; preds = %273
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %347 = load i32, i32* %17, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @OTHER_OBJ, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %371

355:                                              ; preds = %345
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %357, align 8
  %358 = load i32, i32* @ACE_EVERYONE, align 4
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i64 1
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* @B_FALSE, align 4
  %368 = call i32 @ace_make_deny(%struct.TYPE_10__* %363, %struct.TYPE_10__* %365, i32 %366, i32 %367)
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i64 2
  store %struct.TYPE_10__* %370, %struct.TYPE_10__** %20, align 8
  br label %373

371:                                              ; preds = %345
  %372 = load i32, i32* @EINVAL, align 4
  store i32 %372, i32* %11, align 4
  br label %385

373:                                              ; preds = %355
  br label %374

374:                                              ; preds = %373, %344
  br label %375

375:                                              ; preds = %374, %256
  br label %376

376:                                              ; preds = %375, %230
  br label %377

377:                                              ; preds = %376, %76
  %378 = load i32, i32* %17, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %17, align 4
  br label %62

380:                                              ; preds = %62
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %382 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %381, %struct.TYPE_10__** %382, align 8
  %383 = load i32, i32* %16, align 4
  %384 = load i32*, i32** %9, align 8
  store i32 %383, i32* %384, align 4
  br label %385

385:                                              ; preds = %380, %371, %59, %28
  %386 = load i32, i32* %11, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %402

388:                                              ; preds = %385
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %390 = icmp ne %struct.TYPE_10__* %389, null
  br i1 %390, label %391, label %401

391:                                              ; preds = %388
  %392 = load i32, i32* %16, align 4
  %393 = icmp sgt i32 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %391
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %396 = load i32, i32* %16, align 4
  %397 = sext i32 %396 to i64
  %398 = mul i64 %397, 32
  %399 = trunc i64 %398 to i32
  %400 = call i32 @cacl_free(%struct.TYPE_10__* %395, i32 %399)
  br label %401

401:                                              ; preds = %394, %391, %388
  br label %402

402:                                              ; preds = %401, %385
  %403 = load i32, i32* %11, align 4
  ret i32 %403
}

declare dso_local i32 @ln_aent_preprocess(%struct.TYPE_9__*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ksort(i32, i32, i32, i32) #1

declare dso_local i64 @cacl_malloc(i8**, i32) #1

declare dso_local i8* @mode_to_ace_access(i32, i32, i32, i32) #1

declare dso_local i32 @ace_make_deny(%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @cacl_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

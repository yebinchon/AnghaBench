; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*)* }
%struct.TYPE_27__ = type { i32, i32*, i32*, i32* }

@EC_F_EC_GF2M_SIMPLE_LADDER_POST = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32*)* @ec_GF2m_simple_ladder_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_GF2m_simple_ladder_post(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @BN_is_zero(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %24 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_28__* %22, %struct.TYPE_27__* %23)
  store i32 %24, i32* %6, align 4
  br label %312

25:                                               ; preds = %5
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @BN_is_zero(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %34 = call i32 @EC_POINT_copy(%struct.TYPE_27__* %32, %struct.TYPE_27__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @EC_POINT_invert(%struct.TYPE_28__* %37, %struct.TYPE_27__* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_LADDER_POST, align 4
  %44 = load i32, i32* @ERR_R_EC_LIB, align 4
  %45 = call i32 @ECerr(i32 %43, i32 %44)
  store i32 0, i32* %6, align 4
  br label %312

46:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %312

47:                                               ; preds = %25
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @BN_CTX_start(i32* %48)
  %50 = load i32*, i32** %11, align 8
  %51 = call i32* @BN_CTX_get(i32* %50)
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32* @BN_CTX_get(i32* %52)
  store i32* %53, i32** %14, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* @BN_CTX_get(i32* %54)
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_LADDER_POST, align 4
  %60 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %61 = call i32 @ECerr(i32 %59, i32 %60)
  br label %308

62:                                               ; preds = %47
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %66, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 %67(%struct.TYPE_28__* %68, i32* %69, i32* %72, i32* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %296

79:                                               ; preds = %62
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %83, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 %84(%struct.TYPE_28__* %85, i32* %86, i32* %89, i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %296

96:                                               ; preds = %79
  %97 = load i32*, i32** %14, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @BN_GF2m_add(i32* %97, i32* %100, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %296

104:                                              ; preds = %96
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %108, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 %109(%struct.TYPE_28__* %110, i32* %111, i32* %114, i32* %117, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %296

121:                                              ; preds = %104
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %125, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 %126(%struct.TYPE_28__* %127, i32* %130, i32* %133, i32* %134, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %296

138:                                              ; preds = %121
  %139 = load i32*, i32** %15, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @BN_GF2m_add(i32* %139, i32* %140, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %296

146:                                              ; preds = %138
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %150, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 %151(%struct.TYPE_28__* %152, i32* %153, i32* %154, i32* %155, i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %296

159:                                              ; preds = %146
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 2
  %164 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*)** %163, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 %164(%struct.TYPE_28__* %165, i32* %166, i32* %169, i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %296

173:                                              ; preds = %159
  %174 = load i32*, i32** %15, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = call i32 @BN_GF2m_add(i32* %174, i32* %177, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %296

181:                                              ; preds = %173
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %185, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %188 = load i32*, i32** %15, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = load i32*, i32** %13, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 %186(%struct.TYPE_28__* %187, i32* %188, i32* %189, i32* %190, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %296

194:                                              ; preds = %181
  %195 = load i32*, i32** %14, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = load i32*, i32** %14, align 8
  %198 = call i32 @BN_GF2m_add(i32* %195, i32* %196, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %296

200:                                              ; preds = %194
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %204, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %207 = load i32*, i32** %15, align 8
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = load i32*, i32** %11, align 8
  %213 = call i32 %205(%struct.TYPE_28__* %206, i32* %207, i32* %210, i32* %211, i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %296

215:                                              ; preds = %200
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 1
  %220 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*)** %219, align 8
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %222 = load i32*, i32** %15, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = load i32*, i32** %11, align 8
  %225 = call i32 %220(%struct.TYPE_28__* %221, i32* %222, i32* %223, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %296

227:                                              ; preds = %215
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %231, align 8
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %234 = load i32*, i32** %14, align 8
  %235 = load i32*, i32** %14, align 8
  %236 = load i32*, i32** %15, align 8
  %237 = load i32*, i32** %11, align 8
  %238 = call i32 %232(%struct.TYPE_28__* %233, i32* %234, i32* %235, i32* %236, i32* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %296

240:                                              ; preds = %227
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 0
  %245 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %244, align 8
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = load i32*, i32** %15, align 8
  %254 = load i32*, i32** %11, align 8
  %255 = call i32 %245(%struct.TYPE_28__* %246, i32* %249, i32* %252, i32* %253, i32* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %296

257:                                              ; preds = %240
  %258 = load i32*, i32** %15, align 8
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @BN_GF2m_add(i32* %258, i32* %261, i32* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %257
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  %272 = load i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32*, i32*, i32*)** %271, align 8
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %274 = load i32*, i32** %15, align 8
  %275 = load i32*, i32** %15, align 8
  %276 = load i32*, i32** %14, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = call i32 %272(%struct.TYPE_28__* %273, i32* %274, i32* %275, i32* %276, i32* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %296

280:                                              ; preds = %267
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i32*, i32** %15, align 8
  %288 = call i32 @BN_GF2m_add(i32* %283, i32* %286, i32* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %280
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @BN_one(i32* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %290, %280, %267, %257, %240, %227, %215, %200, %194, %181, %173, %159, %146, %138, %121, %104, %96, %79, %62
  br label %308

297:                                              ; preds = %290
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 0
  store i32 1, i32* %299, align 8
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @BN_set_negative(i32* %302, i32 0)
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @BN_set_negative(i32* %306, i32 0)
  store i32 1, i32* %12, align 4
  br label %308

308:                                              ; preds = %297, %296, %58
  %309 = load i32*, i32** %11, align 8
  %310 = call i32 @BN_CTX_end(i32* %309)
  %311 = load i32, i32* %12, align 4
  store i32 %311, i32* %6, align 4
  br label %312

312:                                              ; preds = %308, %46, %42, %21
  %313 = load i32, i32* %6, align 4
  ret i32 %313
}

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @EC_POINT_copy(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @EC_POINT_invert(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

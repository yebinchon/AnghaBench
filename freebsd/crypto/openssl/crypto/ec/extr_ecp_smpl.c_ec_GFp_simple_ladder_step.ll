; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_ladder_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_ladder_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_30__*, i32*, i32 }
%struct.TYPE_30__ = type { i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)* }
%struct.TYPE_31__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_ladder_step(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_31__* %2, %struct.TYPE_31__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_31__* %3, %struct.TYPE_31__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %19, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @BN_CTX_start(i32* %20)
  %22 = load i32*, i32** %10, align 8
  %23 = call i32* @BN_CTX_get(i32* %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @BN_CTX_get(i32* %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32* @BN_CTX_get(i32* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @BN_CTX_get(i32* %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @BN_CTX_get(i32* %30)
  store i32* %31, i32** %16, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32* @BN_CTX_get(i32* %32)
  store i32* %33, i32** %17, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* @BN_CTX_get(i32* %34)
  store i32* %35, i32** %18, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @BN_CTX_get(i32* %36)
  store i32* %37, i32** %19, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %495, label %40

40:                                               ; preds = %5
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %44, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 %45(%struct.TYPE_32__* %46, i32* %47, i32* %50, i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %495

57:                                               ; preds = %40
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %61, align 8
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 %62(%struct.TYPE_32__* %63, i32* %64, i32* %67, i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %495

74:                                               ; preds = %57
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %78, align 8
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 %79(%struct.TYPE_32__* %80, i32* %81, i32* %84, i32* %87, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %495

91:                                               ; preds = %74
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %95, align 8
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 %96(%struct.TYPE_32__* %97, i32* %98, i32* %101, i32* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %495

108:                                              ; preds = %91
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %112, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 %113(%struct.TYPE_32__* %114, i32* %115, i32* %118, i32* %119, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %495

123:                                              ; preds = %108
  %124 = load i32*, i32** %12, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @BN_mod_add_quick(i32* %124, i32* %125, i32* %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %495

132:                                              ; preds = %123
  %133 = load i32*, i32** %16, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @BN_mod_add_quick(i32* %133, i32* %134, i32* %135, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %495

141:                                              ; preds = %132
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %145, align 8
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 %146(%struct.TYPE_32__* %147, i32* %148, i32* %149, i32* %150, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %495

154:                                              ; preds = %141
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 1
  %159 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)** %158, align 8
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = load i32*, i32** %13, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 %159(%struct.TYPE_32__* %160, i32* %161, i32* %162, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %495

166:                                              ; preds = %154
  %167 = load i32*, i32** %19, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @BN_mod_lshift_quick(i32* %167, i32 %170, i32 2, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %495

176:                                              ; preds = %166
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 0
  %181 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %180, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %183 = load i32*, i32** %13, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 %181(%struct.TYPE_32__* %182, i32* %183, i32* %184, i32* %185, i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %495

189:                                              ; preds = %176
  %190 = load i32*, i32** %12, align 8
  %191 = load i32*, i32** %12, align 8
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @BN_mod_lshift1_quick(i32* %190, i32* %191, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %495

197:                                              ; preds = %189
  %198 = load i32*, i32** %12, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @BN_mod_add_quick(i32* %198, i32* %199, i32* %200, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %495

206:                                              ; preds = %197
  %207 = load i32*, i32** %13, align 8
  %208 = load i32*, i32** %14, align 8
  %209 = load i32*, i32** %15, align 8
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @BN_mod_sub_quick(i32* %207, i32* %208, i32* %209, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %495

215:                                              ; preds = %206
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 1
  %220 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)** %219, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %222 = load i32*, i32** %13, align 8
  %223 = load i32*, i32** %13, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = call i32 %220(%struct.TYPE_32__* %221, i32* %222, i32* %223, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %495

227:                                              ; preds = %215
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %231, align 8
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %234 = load i32*, i32** %15, align 8
  %235 = load i32*, i32** %13, align 8
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32*, i32** %10, align 8
  %240 = call i32 %232(%struct.TYPE_32__* %233, i32* %234, i32* %235, i32* %238, i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %495

242:                                              ; preds = %227
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 0
  %247 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %246, align 8
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %249 = load i32*, i32** %12, align 8
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32*, i32** %12, align 8
  %254 = load i32*, i32** %10, align 8
  %255 = call i32 %247(%struct.TYPE_32__* %248, i32* %249, i32* %252, i32* %253, i32* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %495

257:                                              ; preds = %242
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32*, i32** %12, align 8
  %262 = load i32*, i32** %15, align 8
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @BN_mod_sub_quick(i32* %260, i32* %261, i32* %262, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %495

268:                                              ; preds = %257
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 0
  %273 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %272, align 8
  %274 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32*, i32** %13, align 8
  %282 = load i32*, i32** %10, align 8
  %283 = call i32 %273(%struct.TYPE_32__* %274, i32* %277, i32* %280, i32* %281, i32* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %495

285:                                              ; preds = %268
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 1
  %290 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)** %289, align 8
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %292 = load i32*, i32** %15, align 8
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i32*, i32** %10, align 8
  %297 = call i32 %290(%struct.TYPE_32__* %291, i32* %292, i32* %295, i32* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %495

299:                                              ; preds = %285
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)** %303, align 8
  %305 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %306 = load i32*, i32** %14, align 8
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = load i32*, i32** %10, align 8
  %311 = call i32 %304(%struct.TYPE_32__* %305, i32* %306, i32* %309, i32* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %495

313:                                              ; preds = %299
  %314 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 0
  %318 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %317, align 8
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %320 = load i32*, i32** %16, align 8
  %321 = load i32*, i32** %14, align 8
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = load i32*, i32** %10, align 8
  %326 = call i32 %318(%struct.TYPE_32__* %319, i32* %320, i32* %321, i32* %324, i32* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %495

328:                                              ; preds = %313
  %329 = load i32*, i32** %17, align 8
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @BN_mod_add_quick(i32* %329, i32* %332, i32* %335, i32 %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %495

341:                                              ; preds = %328
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_30__*, %struct.TYPE_30__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i32 0, i32 1
  %346 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)** %345, align 8
  %347 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %348 = load i32*, i32** %17, align 8
  %349 = load i32*, i32** %17, align 8
  %350 = load i32*, i32** %10, align 8
  %351 = call i32 %346(%struct.TYPE_32__* %347, i32* %348, i32* %349, i32* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %495

353:                                              ; preds = %341
  %354 = load i32*, i32** %17, align 8
  %355 = load i32*, i32** %17, align 8
  %356 = load i32*, i32** %15, align 8
  %357 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @BN_mod_sub_quick(i32* %354, i32* %355, i32* %356, i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %495

362:                                              ; preds = %353
  %363 = load i32*, i32** %17, align 8
  %364 = load i32*, i32** %17, align 8
  %365 = load i32*, i32** %14, align 8
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @BN_mod_sub_quick(i32* %363, i32* %364, i32* %365, i32 %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %495

371:                                              ; preds = %362
  %372 = load i32*, i32** %18, align 8
  %373 = load i32*, i32** %15, align 8
  %374 = load i32*, i32** %16, align 8
  %375 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @BN_mod_sub_quick(i32* %372, i32* %373, i32* %374, i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %495

380:                                              ; preds = %371
  %381 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_30__*, %struct.TYPE_30__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 1
  %385 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)** %384, align 8
  %386 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %387 = load i32*, i32** %18, align 8
  %388 = load i32*, i32** %18, align 8
  %389 = load i32*, i32** %10, align 8
  %390 = call i32 %385(%struct.TYPE_32__* %386, i32* %387, i32* %388, i32* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %495

392:                                              ; preds = %380
  %393 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 0
  %397 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %396, align 8
  %398 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %399 = load i32*, i32** %12, align 8
  %400 = load i32*, i32** %14, align 8
  %401 = load i32*, i32** %17, align 8
  %402 = load i32*, i32** %10, align 8
  %403 = call i32 %397(%struct.TYPE_32__* %398, i32* %399, i32* %400, i32* %401, i32* %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %495

405:                                              ; preds = %392
  %406 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 0
  %410 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %409, align 8
  %411 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %412 = load i32*, i32** %12, align 8
  %413 = load i32*, i32** %19, align 8
  %414 = load i32*, i32** %12, align 8
  %415 = load i32*, i32** %10, align 8
  %416 = call i32 %410(%struct.TYPE_32__* %411, i32* %412, i32* %413, i32* %414, i32* %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %495

418:                                              ; preds = %405
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = load i32*, i32** %18, align 8
  %423 = load i32*, i32** %12, align 8
  %424 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @BN_mod_sub_quick(i32* %421, i32* %422, i32* %423, i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %495

429:                                              ; preds = %418
  %430 = load i32*, i32** %18, align 8
  %431 = load i32*, i32** %15, align 8
  %432 = load i32*, i32** %16, align 8
  %433 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @BN_mod_add_quick(i32* %430, i32* %431, i32* %432, i32 %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %495

438:                                              ; preds = %429
  %439 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %439, i32 0, i32 1
  %441 = load %struct.TYPE_30__*, %struct.TYPE_30__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %441, i32 0, i32 1
  %443 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*)** %442, align 8
  %444 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %445 = load i32*, i32** %15, align 8
  %446 = load i32*, i32** %14, align 8
  %447 = load i32*, i32** %10, align 8
  %448 = call i32 %443(%struct.TYPE_32__* %444, i32* %445, i32* %446, i32* %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %495

450:                                              ; preds = %438
  %451 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %451, i32 0, i32 1
  %453 = load %struct.TYPE_30__*, %struct.TYPE_30__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %453, i32 0, i32 0
  %455 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %454, align 8
  %456 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %457 = load i32*, i32** %19, align 8
  %458 = load i32*, i32** %15, align 8
  %459 = load i32*, i32** %19, align 8
  %460 = load i32*, i32** %10, align 8
  %461 = call i32 %455(%struct.TYPE_32__* %456, i32* %457, i32* %458, i32* %459, i32* %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %495

463:                                              ; preds = %450
  %464 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_30__*, %struct.TYPE_30__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %466, i32 0, i32 0
  %468 = load i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32*, i32*, i32*, i32*)** %467, align 8
  %469 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %470 = load i32*, i32** %17, align 8
  %471 = load i32*, i32** %17, align 8
  %472 = load i32*, i32** %18, align 8
  %473 = load i32*, i32** %10, align 8
  %474 = call i32 %468(%struct.TYPE_32__* %469, i32* %470, i32* %471, i32* %472, i32* %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %495

476:                                              ; preds = %463
  %477 = load i32*, i32** %17, align 8
  %478 = load i32*, i32** %17, align 8
  %479 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @BN_mod_lshift1_quick(i32* %477, i32* %478, i32 %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %495

484:                                              ; preds = %476
  %485 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %485, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  %488 = load i32*, i32** %19, align 8
  %489 = load i32*, i32** %17, align 8
  %490 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @BN_mod_add_quick(i32* %487, i32* %488, i32* %489, i32 %492)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %496, label %495

495:                                              ; preds = %484, %476, %463, %450, %438, %429, %418, %405, %392, %380, %371, %362, %353, %341, %328, %313, %299, %285, %268, %257, %242, %227, %215, %206, %197, %189, %176, %166, %154, %141, %132, %123, %108, %91, %74, %57, %40, %5
  br label %497

496:                                              ; preds = %484
  store i32 1, i32* %11, align 4
  br label %497

497:                                              ; preds = %496, %495
  %498 = load i32*, i32** %10, align 8
  %499 = call i32 @BN_CTX_end(i32* %498)
  %500 = load i32, i32* %11, align 4
  ret i32 %500
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_mod_add_quick(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_lshift_quick(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_mod_lshift1_quick(i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_sub_quick(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
